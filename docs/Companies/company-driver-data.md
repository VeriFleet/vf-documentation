# Fahrerdaten & Schnittstelle

Im Abschnitt **„Fahrerdaten & Schnittstelle“** der Firmeneinstellungen legen Sie fest, **woher die
Fahrerdaten einer Firma kommen**: aus der Oberfläche, aus dem Fuhrpark-System Carano oder aus dem
System des Kunden über die Schnittstelle (REST-API). Für die Schnittstelle verwalten Sie hier
außerdem die **API-Schlüssel**, mit denen sich das Kundensystem anmeldet.

Der Abschnitt hieß bisher **„Carano-Anbindung“**.

!!! note "Wer sieht diesen Abschnitt?"
    Nur Plattform-Administratoren — Benutzer mit der Berechtigung **„Carano-Import berechtigt“**.
    Fehlt Ihnen der Abschnitt und möchten Sie die Datenquelle umstellen oder einen API-Schlüssel
    erhalten, wenden Sie sich an Ihren Ansprechpartner.

## Abschnitt öffnen

1. Wählen Sie die Firma aus — in der Regel den **Mandanten**, also die oberste Firma des Kunden.
2. Klicken Sie im Menü auf **„Firma“**.
3. Öffnen Sie den aufklappbaren Abschnitt **„Fahrerdaten & Schnittstelle“**.

## Datenquelle der Fahrer

Oben im Abschnitt wählen Sie die Datenquelle:

| Auswahl | Bedeutung |
|---|---|
| **Vererbt** | Es gilt die Einstellung der übergeordneten Firma. Nur bei Firmen mit übergeordneter Firma verfügbar. |
| **Manuell** | Die Fahrer werden in der Oberfläche gepflegt. |
| **Carano** | Die Fahrer kommen aus Carano; der Import läuft alle 4 Stunden. |
| **REST-API** | Das System des Kunden legt Fahrer an, pflegt sie und verbucht Kontrollen über die Schnittstelle. |

**Vererbung:** Die Datenquelle wird am Mandanten eingestellt und gilt für alle Firmen darunter,
die keinen eigenen Wert haben. Ist in der ganzen Firmenkette nichts eingestellt, gilt
**„Manuell“**. Unter der Auswahl sehen Sie, was tatsächlich gilt und woher es kommt, zum Beispiel
„Wirksam: Carano (vererbt von „Musterfirma GmbH“)“.

### Datenquelle umstellen

1. Wählen Sie die neue Datenquelle aus.
2. Es öffnet sich der Dialog **„Datenquelle umstellen?“**. Er zeigt, was die Umstellung bewirkt:
   wie viele mit Carano verknüpfte Tochterfirmen und Carano-Fahrer betroffen sind und welche
   aktiven API-Schlüssel widerrufen werden.
3. Bestätigen Sie den Dialog.

!!! warning "Die Umstellung wirkt sofort"
    Die neue Datenquelle gilt **unmittelbar nach der Bestätigung** — nicht erst, wenn Sie unten auf
    „Speichern“ klicken. Die Umstellung wird in der Historie des Administrators festgehalten, der
    sie vorgenommen hat.

### Was sich dabei ändert

**Von Carano auf „Manuell“ oder „REST-API“:**

- Carano-Import und -Export überspringen diese Firmen ab ihrem nächsten Lauf.
- Carano-Kundennummern, die Carano-Zugangsdaten und die Carano-Kennungen der Fahrer **bleiben
  gespeichert**. Der Weg zurück zu Carano ist damit jederzeit ohne Datenverlust möglich.
- Die Fahrer lassen sich in der Oberfläche bearbeiten und in andere Firmen verschieben.
- Ausgeschiedene Fahrer werden **nicht mehr automatisch gelöscht**. Deaktivieren Sie sie selbst —
  in der Oberfläche oder über die Schnittstelle.
- Kontrollergebnisse werden nicht mehr an Carano übertragen. Kontrollen, die außerhalb erledigt
  wurden, verbucht das Kundensystem über `POST api/user/{id}/check`; dabei werden auch die offenen
  Aufforderungen des Fahrers geschlossen.
- Aufforderungen, Erinnerungen und E-Learning laufen unverändert weiter.

**Zurück zu Carano:** Ab dem nächsten Importlauf überschreibt Carano die Stammdaten der
Carano-Fahrer wieder.

!!! tip
    Prüfen Sie vor dem Zurückstellen, ob die Fahrerliste in Carano aktuell ist: Carano-Fahrer, die
    Carano nicht mehr als aktiv führt, entfernt der Import wie gewohnt.

**Weg von „REST-API“:** Die aktiven API-Schlüssel dieser Firma werden widerrufen. Das Kundensystem
kann sich damit nicht mehr anmelden.

### Bestehende Firmen

Jeder Mandant, der bisher mit Carano synchronisiert wurde, steht automatisch auf **„Carano“**. Alle
übrigen Firmen haben keinen eigenen Wert und gelten als **„Manuell“**. Solange niemand umstellt,
ändert sich also nichts.

## Datenquelle „Carano“: Zugangsdaten

Im Modus „Carano“ zeigt der Abschnitt die Carano-Zugangsdaten des Mandanten:

- **Mandantenkürzel**
- **Benutzer**
- **Passwort**

Das gespeicherte Passwort wird **nie angezeigt** — das Feld bleibt leer:

- Lassen Sie das Feld **leer**, bleibt das gespeicherte Passwort erhalten.
- **Geben Sie ein neues Passwort ein**, ersetzt es das gespeicherte.
- Mit **„Gespeichertes Passwort entfernen“** löschen Sie es.

Die Schaltfläche **„Sub-Firma aus Carano importieren“** steht nur im Modus „Carano“ zur Verfügung.
Wie Sie Firmen aus Carano importieren, lesen Sie unter [Carano-Anbindung](company-carano-connection.md).

## Datenquelle „REST-API“: API-Schlüssel

Im Modus „REST-API“ verwalten Sie die Schlüssel, mit denen sich das Kundensystem an der
Schnittstelle anmeldet.

### Übersicht „API-Schlüssel“

| Spalte | Inhalt |
|---|---|
| **Bezeichnung** | frei gewählter Name, z. B. das anbindende System |
| **Schlüssel** | nur der öffentliche Anfang, z. B. `vfk_1a2b3c4d_…` — genug, um mit dem Kunden über denselben Schlüssel zu sprechen |
| **Handelt als** | der Benutzer, in dessen Namen der Schlüssel arbeitet |
| **Erstellt** | Zeitpunkt der Erzeugung |
| **Zuletzt genutzt** | letzter erfolgreicher Aufruf mit diesem Schlüssel |
| **Läuft ab** | optionales Ablaufdatum |
| **Status** | *Aktiv*, *Widerrufen* oder *Abgelaufen* |

Über **„Widerrufen“** sperren Sie einen Schlüssel nach einer Sicherheitsabfrage dauerhaft.
Widerrufene Schlüssel bleiben zur Nachvollziehbarkeit in der Liste.

### Schlüssel erzeugen

1. Klicken Sie auf **„Schlüssel erzeugen“**.
2. Füllen Sie den Dialog aus:
    - **Bezeichnung** (Pflicht) — zum Beispiel der Name des anbindenden Systems.
    - **Handelt als** — ein aktiver Benutzer dieser Firma mit dem Recht, Benutzer zu verwalten;
      typischerweise der bereits vorhandene API-Benutzer des Kunden. Alternativ wählen Sie
      **„Neuer technischer API-Benutzer“**: Dann wird ein Benutzer „API &lt;Firmenname&gt;“ mit der
      Rolle Firmen-Administrator angelegt, **ohne E-Mail-Adresse und ohne Passwort**. Er kann sich
      nirgends anmelden; nur der Schlüssel handelt in seinem Namen.
    - **Läuft ab am** (optional) — danach wird der Schlüssel abgewiesen.
3. Bestätigen Sie. Der Schlüssel wird **genau einmal** angezeigt, mit einer Schaltfläche zum
   Kopieren.

!!! warning "Schlüssel sofort sicher übergeben"
    Der vollständige Schlüssel lässt sich **später nicht mehr anzeigen** — gespeichert wird nur ein
    Prüfwert, aus dem er sich nicht zurückgewinnen lässt. Kopieren Sie ihn und übergeben Sie ihn auf
    sicherem Weg an den Kunden, nicht im Klartext per E-Mail oder Chat. Ist er verloren, widerrufen
    Sie ihn und erzeugen einen neuen.

### Übergang von der Anmeldung mit E-Mail und Passwort

Bisher meldeten sich Kundensysteme mit E-Mail-Adresse und Passwort eines Benutzers an
(`POST api/auth`) und erhielten dafür ein Sitzungs-Token. Der Schalter
**„Anmeldung per E-Mail und Passwort an der API erlauben (Übergang)“** steuert, ob das weiter geht:

- **Ein** (Standard): Der bisherige Weg funktioniert **parallel** zu den API-Schlüsseln weiter. So
  kann der Kunde in seinem Tempo umstellen.
- **Aus**: `POST api/auth` wird für Benutzer dieser Firma und aller Firmen darunter, die die
  Einstellung übernehmen, mit **HTTP 403 `password_login_disabled`** abgelehnt. Die Anmeldung an der
  Oberfläche ist davon **nicht** betroffen.

Der Schalter wird wie die Datenquelle an die Firmen darunter vererbt. Er wirkt **sofort** – nicht
erst mit „Speichern“; das Ausschalten fragt vorher nach und wird in der Historie des
Administrators festgehalten. Auch Sitzungen, die ein Kundensystem schon vorher über
`POST api/auth` geholt hat, werden spätestens nach einer Minute abgewiesen.

**Empfohlenes Vorgehen:**

1. Schlüssel erzeugen.
2. Schlüssel sicher an den Kunden übergeben.
3. Der Kunde stellt sein System auf den Schlüssel um.
4. In der Übersicht prüfen, ob **„Zuletzt genutzt“** beim Schlüssel aktuelle Aufrufe zeigt.
5. Schalter **ausschalten**.

## Für die IT des Kunden: Schlüssel verwenden

- Senden Sie den Schlüssel bei **jedem** Aufruf im HTTP-Header `Authorization` mit — ein
  vorangestelltes `Bearer ` ist erlaubt, aber nicht nötig:

    ```text
    Authorization: vfk_1a2b3c4d_…
    ```

- Ein Login-Aufruf entfällt. Es gibt keine Sitzung, die abläuft oder nach einem Neustart des
  Servers verloren geht.
- Der Schlüssel wird **nur im `Authorization`-Header** angenommen, niemals als Teil der Adresse
  (URL).
- Der Schlüssel handelt **als der hinterlegte Benutzer**: Es gelten dessen Rechte und dessen
  Sichtbereich (die Firma und alle Firmen darunter), und in der Historie erscheint dieser Benutzer.
- Pro Schlüssel sind **100 Anfragen pro Minute** möglich.
- Die Beschreibung aller Schnittstellenaufrufe (Swagger) finden Sie unter der Adresse Ihrer
  Verwaltungsoberfläche mit dem Pfad `/swagger`.

!!! warning "Kein Zugang zur Oberfläche"
    Ein API-Schlüssel öffnet **niemals** die Verwaltungsoberfläche. Umgekehrt nimmt die Oberfläche
    auch Sitzungs-Tokens aus `POST api/auth` nicht mehr an — sie akzeptiert nur Anmeldungen über
    ihre eigene Anmeldeseite, mit [Zwei-Faktor-Authentifizierung](../Admin/two-factor.md), wo diese
    vorgeschrieben ist. Das gilt unabhängig von der gewählten Datenquelle.
