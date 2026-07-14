# Zwei-Faktor-Authentifizierung (2FA)

Die Zwei-Faktor-Authentifizierung schützt die Anmeldung am Admin-Bereich mit einem
zusätzlichen Sicherheitsfaktor: Nach der korrekten Eingabe von E-Mail-Adresse und Passwort
verlangt das System einen **6-stelligen Bestätigungscode**, der an die E-Mail-Adresse des
Benutzers gesendet wird.

## 2FA für eine Firma erzwingen

Ob 2FA verpflichtend ist, legen Sie **je Firma** fest:

1. Öffnen Sie **Firma bearbeiten**.
2. Aktivieren Sie die Option **„2FA erzwingen"**.
3. Speichern Sie die Änderung.

Ab sofort durchlaufen alle Benutzer dieser Firma bei der Anmeldung die
Zwei-Faktor-Prüfung.

## Ablauf bei der Anmeldung

1. Der Benutzer meldet sich wie gewohnt mit E-Mail-Adresse und Passwort an.
2. Das System sendet automatisch einen 6-stelligen Code an die hinterlegte
   E-Mail-Adresse.
3. Ein Dialog fordert zur Eingabe des Codes auf.
4. Nach korrekter Eingabe ist die Anmeldung abgeschlossen.

!!! warning
    Benutzer ohne hinterlegte E-Mail-Adresse können sich bei erzwungener 2FA nicht
    anmelden. Stellen Sie vor der Aktivierung sicher, dass alle Admin-Benutzer der Firma
    eine gültige E-Mail-Adresse in ihren Stammdaten haben.

!!! tip
    Für Fahrer ändert sich nichts: Die Führerscheinkontrolle per Link oder QR-Code
    funktioniert weiterhin ohne Anmeldung — 2FA betrifft nur den Zugang zum Admin-Bereich.
