# Anleitung: Eigenes Postfach als Absender

Die Mails einer Firma können über deren eigenes Postfach versendet werden. Das Postfach gilt auch für die
Tochterfirmen, solange sie kein eigenes haben.

1. Öffnen Sie **Firma bearbeiten › Kommunikation › Absender der Mails** und wählen Sie **„Eigenes Postfach“**.
2. Klicken Sie auf **„Mit Microsoft verbinden“** (Microsoft 365) oder **„Mit Google verbinden“** (Google
   Workspace). Ungespeicherte Änderungen werden vorher gespeichert.
3. Melden Sie sich im Fenster des Anbieters mit dem Postfach an, das als Absender dienen soll, und bestätigen Sie.
4. Zurück in VeriFleet zeigt der Abschnitt **„Verbunden als …“**. Tragen Sie unter **Test-Mail senden** eine
   Empfängeradresse ein und prüfen Sie den Versand.

**Eigener Mailserver:** Über **„Manuell einrichten“** hinterlegen Sie Host, Port und Zugangsdaten (SMTP).

!!! warning
    Ist die Anmeldung über den Anbieter noch nicht eingerichtet, erscheint ein Hinweis; wenden Sie sich an
    Ihren Ansprechpartner. Google verlangt für den Versand eine App-Verifizierung; bis dahin erscheint beim
    Verbinden eine Warnung. Anbieter begrenzen den Versand (Microsoft: 30 Mails je Minute). Die Versandgrenze
    des Postfachs steht im Abschnitt; zurückgestellte Aufforderungen werden danach automatisch nachgeliefert.

**Zurück zum VeriFleet-Postfach:** **„Verbindung löschen“** (wirkt sofort). Der Versand läuft danach über das
Postfach der Mutterfirma oder das VeriFleet-Postfach. Details zur Einrichtung der Anbieter:
[Mail-Anbindung](../Admin/mail-oauth.md).
