# Firma bearbeiten

Hier verwalten Sie die ausgewählte Firma. Die Seite ist nach Aufgaben in **Reiter** gegliedert; ein
**„?“ am Reiter** öffnet die passende Hilfeseite.

| Reiter | Wofür | Wer sieht ihn |
|---|---|---|
| [Stammdaten & Dienste](company-edit-master-data.md) | Name, Anschrift, Kontaktadressen, Sprache, 2FA, gebuchte Dienste | alle mit Zugriff auf die Firma |
| [Fahrer & Kontrollen](company-edit-drivers.md) | Kontroll-Rhythmus, Erinnerungen, Ablauf-Warnungen, Eskalationsliste | Firmen-Administratoren |
| [Kommunikation](company-edit-communication.md) | Absender-Postfach, Mail-Texte, Angaben in den Mails, Aufbewahrung | je nach Berechtigung |
| [Erscheinungsbild](company-edit-appearance.md) | Logo, Farben, Mail-Aussehen | Berechtigung „Corporate Identity“ |
| [Plattform](company-edit-platform.md) | Abrechnung, Datenquelle, automatische Prüfung, Technik | Plattform-Administratoren bzw. die jeweilige Berechtigung |

Die Reiter ab „Kommunikation“ gibt es nur bei **Tochterfirmen**.

## Gleiche Bedienung überall

**Übernehmen oder eigener Wert.** Jede Einstellung, die eine Tochterfirma von ihrer Mutterfirma
übernehmen kann, hat die Wahl **„Übernehmen“** / **„Eigener Wert“**. Bei „Übernehmen“ steht darunter,
was gilt und woher es kommt, zum Beispiel „↳ Übernommen von Fleet Partner GmbH: 7 Tage“. Ist in der
ganzen Kette nichts eingestellt, gilt der Standardwert. Am Reitertitel zeigt „n angepasst“, wie
viele Einstellungen die Firma selbst setzt.

**Speichern.** Alle Änderungen gelten erst nach **„Speichern“** (oben rechts in der Kopfzeile, mit Anzeige der
ungespeicherten Änderungen). Verlassen Sie die Seite mit ungespeicherten Änderungen, fragt das System
nach. Was ohne Speichern **sofort wirkt**, ist am Abschnitt mit **„wirkt sofort“** gekennzeichnet
(Datenquelle, API-Schlüssel, Mail-Vorlagen, Postfach verbinden oder löschen).

**Weitere Aktionen:** Tochterfirma anlegen, Tochterfirma aus Carano importieren, Firma löschen
(nur mit Berechtigung; löscht die Firma und alle ihre Benutzer unwiderruflich).

## Anleitungen

- [Neue Kundenfirma einrichten](guide-new-customer.md)
- [Erinnerungen und Eskalation einstellen](guide-reminders-escalation.md)
- [Eigenes Postfach als Absender](guide-own-mailbox.md)
