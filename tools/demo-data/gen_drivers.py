#!/usr/bin/env python3
"""Erzeugt SQL fuer synthetische Demo-Fahrer + Checks im VeriFleet-Demo-Mandanten (TEST GmbH).
Rein fiktive Daten (DSGVO): keine echten Personen. Deterministisch (fester Seed)."""
import random, uuid, datetime

random.seed(20260714)
COMPANY = "37dddb08-e4da-417a-b59c-a7f816761625"  # TEST GmbH
SALT_SRC = "contact@pjacobs.eu"  # PasswordSalt wird von diesem User kopiert

vornamen = ["Anna","Bernd","Clara","David","Elena","Frank","Greta","Hans","Ida","Jonas",
            "Karin","Lars","Mara","Nils","Olga","Paul","Rosa","Sven","Tina","Udo"]
nachnamen = ["Bauer","Schmidt","Wagner","Becker","Hoffmann","Koch","Richter","Klein",
             "Wolf","Neumann","Schwarz","Braun","Krueger","Lang","Berg","Sommer"]
staedte = ["Duesseldorf","Koeln","Essen","Dortmund","Bochum","Wuppertal"]

def d(y, m, day): return f"'{y:04d}-{m:02d}-{day:02d}'"

# Zustandsverteilung fuer aussagekraeftige Screenshots
# (status, duestate, completed?)  status: 0 Pending,1 Successful,3 ManualRequired
plan = (
    [(1, 0, True)] * 8 +      # erfolgreich abgeschlossen
    [(0, 0, False)] * 3 +     # ausstehend normal
    [(0, 1, False)] * 2 +     # faellig
    [(0, 2, False)] * 1 +     # ueberfaellig
    [(0, 3, False)] * 2 +     # eskalation
    [(3, 0, False)] * 3       # manuelle Nachkontrolle noetig
)

lines = [f"SET @salt := (SELECT PasswordSalt FROM Users WHERE EmailAddress='{SALT_SRC}' LIMIT 1);",
         f"SET @hpw  := (SELECT HashedPassword FROM Users WHERE EmailAddress='{SALT_SRC}' LIMIT 1);"]
now = datetime.date(2026, 7, 14)

for i, (status, due, completed) in enumerate(plan):
    uid = str(uuid.uuid4())
    vn = vornamen[i % len(vornamen)]
    nn = nachnamen[(i * 3) % len(nachnamen)]
    by = random.randint(1965, 2000); bm = random.randint(1,12); bd = random.randint(1,28)
    lic = f"D{random.randint(100000,999999)}{chr(65+i%26)}{random.randint(10,99)}"
    phone = f"+4915{random.randint(10000000,99999999)}"
    email = f"{vn.lower()}.{nn.lower()}{i}@fahrer-demo.example"
    # Fahrer-User (keine Admin-Rolle)
    lines.append(
        "INSERT INTO Users (Id,EmailAddress,IsActive,FirstName,LastName,LicenseNumber,PasswordSalt,HashedPassword,"
        "CreationDateTime,UserRoles,CompanyId,SecurityTagUsageCount,PasswordResetRequired,HasForeignLicense,CustomRoleIds,"
        f"BirthDate,PhoneNumber) VALUES ('{uid}','{email}',1,'{vn}','{nn}','{lic}',@salt,@hpw,NOW(),'[]','{COMPANY}',0,0,0,'[]',"
        f"{d(by,bm,bd)},'{phone}');")
    # Check
    cid = str(uuid.uuid4())
    days_ago = {0:3, 1:11, 2:18, 3:26}.get(due, 3)
    created = now - datetime.timedelta(days=days_ago)
    comp_sql = f"'{created + datetime.timedelta(days=1)}'" if completed else "NULL"
    details_col, details_val = "", ""
    if status == 3:  # ManualRequired -> CheckDetails fuer die Nachkontroll-Queue
        did = str(uuid.uuid4())
        exp = datetime.date(random.choice([2024,2025,2027,2029]), bm, bd)
        lines.append(
            "INSERT INTO CheckDetails (Id,IsManual,IsSelfRegistering,FirstName,LastName,LicenseNumber,BirthDate,"
            "ExpiryDate,DocType,IssuingAuthority,IssuingState,OverallAuthenticityScore,SecurityTripped,ExpiryTripped,"
            f"DocTypeTripped,ImageQaTripped) VALUES ('{did}',1,0,'{vn}','{nn}','{lic}',{d(by,bm,bd)},"
            f"'{exp}','DriverLicense','Stadt {random.choice(staedte)}','Germany',{round(random.uniform(0.55,0.78),2)},"
            f"{random.randint(0,1)},{1 if exp<now else 0},0,{random.randint(0,1)});")
        details_col, details_val = ",DetailsId", f",'{did}'"
    lines.append(
        f"INSERT INTO Checks (Id,UserId,CreatedDateTime,Status,DueState,LastMailDueState,CompletedDateTime,AuthPassToken{details_col}) "
        f"VALUES ('{cid}','{uid}','{created}',{status},{due},{due},{comp_sql},'{uuid.uuid4()}'{details_val});")

print("\n".join(lines))
