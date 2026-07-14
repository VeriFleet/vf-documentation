# Doku-Werkzeuge

Reproduzierbare Erzeugung der Screenshots für die Dokumentation. Ziel: bei jedem
UI-Redesign identisch benannte Screenshots neu schießen, statt sie von Hand zu klicken.

**Wichtig (DSGVO):** Screenshots entstehen ausschließlich aus einem lokal laufenden
AdminPanel mit **synthetischen Demo-Daten** — niemals aus Produktion oder mit echten
Personendaten. Die Seeds unten legen genau solche Fake-Daten an.

## Ablauf (lokal)

### 1. MySQL + AdminPanel lokal starten

```bash
# MySQL mit den Dev-Credentials (server=localhost;uid=verifleet;pwd=verifleet;database=verifleet)
docker run -d --name verifleet-local-mysql \
  -e MYSQL_ROOT_PASSWORD=rootpw -e MYSQL_DATABASE=verifleet \
  -e MYSQL_USER=verifleet -e MYSQL_PASSWORD=verifleet -p 3306:3306 mysql:8

# AdminPanel (net9!) starten — migriert automatisch und legt den Seed-Admin an
cd <verifleet-repo>/AdminPanel
ASPNETCORE_ENVIRONMENT=Development dotnet run
```

> Braucht die **.NET-9-Runtime**. Ist nur .NET 10 installiert, die App aber net9.0,
> bleibt die Seite leer (`blazor.server.js` 404). Dann ASP.NET Core 9 nachinstallieren:
> `curl -sSL https://dot.net/v1/dotnet-install.sh | bash -s -- --channel 9.0 --runtime aspnetcore --install-dir ~/.dotnet9`
> und `~/.dotnet9/dotnet AdminPanel/bin/Debug/net9.0/AdminPanel.dll` ausführen.

Seed-Admin: `contact@pjacobs.eu` / `dds2023!` (GeneralAdmin, Firma THEGOODCONSULTANTS).

### 2. Demo-Daten einspielen

```bash
# Zusätzliche Mandanten (FleetHub/BAMAKA) mit eigener Doku-Variante:
docker exec -i verifleet-local-mysql mysql -u verifleet -pverifleet verifleet < demo-data/demo-tenants.sql

# Synthetische Fahrer + Checks (verteilte Zustände) in die Admin-Firma:
python3 demo-data/gen_drivers.py > /tmp/drivers.sql
docker exec -i verifleet-local-mysql mysql -u verifleet -pverifleet verifleet < /tmp/drivers.sql
# Fahrer der Admin-Firma zuordnen, falls sie in einer Tochterfirma gelandet sind:
#   UPDATE Users SET CompanyId='<admin-company-id>' WHERE UserRoles='[]';
```

Alle Namen/Führerscheinnummern sind zufällig generiert und fiktiv (`@fahrer-demo.example`).

### 3. Screenshots erzeugen

```bash
cd screenshots
npm install
npx playwright install chromium
LANGS=de,en OUT=./out node shoot.mjs
```

Ergebnis: `out/<lang>/<bereich>.png` für alle Bereiche in de + en. Der Login läuft über
`POST /api/auth`; das Token wird direkt in den LocalStorage gesetzt (kein Formular-Klicken).
Sprache über das `.AspNetCore.Culture`-Cookie.

Env-Variablen: `BASE` (Default `http://localhost:5001`), `EMAIL`, `PW`, `LANGS`, `OUT`,
`ONLY` (einzelne Route testen).

### 4. In die Doku übernehmen

Die passenden Bilder nach `docs/<Bereich>/images/` kopieren und in den Markdown-Seiten
referenzieren.
