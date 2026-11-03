# Anleitung: Eigenes Postfach als Absender

Die Mails einer Firma können über deren eigenes Postfach versendet werden, zum Beispiel von
`fuehrerschein@ihre-firma.de` statt vom VeriFleet-Postfach. Das Postfach gilt auch für die Tochterfirmen, solange sie
keins haben. Voraussetzung ist das Recht `ManageMailIntegration` (Administrator oder benutzerdefinierte Rolle).

1. Öffnen Sie **Firma bearbeiten › Kommunikation › Absender der Mails** und wählen Sie **„Eigenes Postfach“**.
2. Wählen Sie die passende Kachel: **„Mit Microsoft verbinden“** (Microsoft 365) oder **„Mit Google verbinden“**
   (Google Workspace). Offene Änderungen der Seite werden vorher gespeichert.
3. Melden Sie sich im Fenster des Anbieters mit dem Postfach an, das als Absender dienen soll, und bestätigen Sie.
4. Zurück in VeriFleet zeigt der Abschnitt **„Verbunden als …“**. Tragen Sie unter **Test-Mail senden** einen
   **Empfänger** ein und prüfen Sie die Zustellung. Absenderadresse und Anzeigename stellen Sie bei Bedarf im
   zugeklappten Bereich „Experten: Dienstkonto und SMTP-Server“ ein; die Adresse trägt VeriFleet beim Verbinden selbst ein.

**Eigener Mailserver (SMTP):** Klicken Sie auf **„Manuell einrichten“**, öffnen Sie bei Bedarf den Bereich „Experten:
Dienstkonto und SMTP-Server“ und tragen Sie Absenderadresse, SMTP-Server, Port (587), Benutzer und Passwort ein.
Übernehmen Sie die Angaben mit **„Mail-Konto speichern“** (oder „Speichern“ oben rechts) und prüfen Sie sie mit
„Test-Mail senden“. Eine IT-Abteilung mit Dienstkonto (Microsoft „App-Berechtigung“, Google „Service-Account“)
trägt dort ebenfalls die Angaben ein; die Felder erklärt [Kommunikation](company-edit-communication.md).

!!! warning
    Ist die Anmeldung über den Anbieter noch nicht eingerichtet, sind die Schaltflächen gesperrt und ein Hinweis
    erscheint; wenden Sie sich an Ihren Ansprechpartner. Google verlangt für den Versand eine App-Verifizierung; bis
    dahin erscheint beim Verbinden eine Warnung. Anbieter begrenzen den Versand (Microsoft: 30 Mails je Minute). VeriFleet
    bleibt darunter (Standard 12 Mails je Minute und 2.000 je 24 Stunden, je Postfach einstellbar); die Versandgrenze
    steht im Abschnitt. Zurückgestellte Aufforderungen werden danach automatisch nachgeliefert.

**Zurück zum vorherigen Absender:** **„Verbindung löschen“** (wirkt sofort, nach Rückfrage) entfernt das Postfach samt
Zugangsdaten. Der Versand läuft danach über das Postfach der Mutterfirma oder das VeriFleet-Postfach. Details zur
Einrichtung der Anbieter: [Mail-Anbindung](../Admin/mail-oauth.md).
