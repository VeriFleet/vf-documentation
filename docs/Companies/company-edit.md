# Firma bearbeiten

Hier verwalten Sie die ausgewählte Firma. Die Seite ist nach Aufgaben in **Reiter** gegliedert; ein
**„?“ am Reiter** öffnet die passende Hilfeseite.

| Reiter | Wofür | Wer sieht ihn |
|---|---|---|
| [Stammdaten & Dienste](company-edit-master-data.md) | Name, Anschrift, Kontaktadressen, Sprache, 2FA, gebuchte Dienste | alle mit Zugriff auf die Firma |
| [Fahrer & Kontrollen](company-edit-drivers.md) | Kontroll-Rhythmus, Erinnerungen, Ablauf-Warnungen, Eskalationsliste | alle mit Zugriff auf die Firma; die Abschnitte nach dem Kontroll-Rhythmus nur mit dem Recht `ManageCompany` und nur bei Tochterfirmen |
| [Kommunikation](company-edit-communication.md) | Absender der Mails, Mail-Texte, Angaben in den Mails, Aufbewahrung | Tochterfirmen, sobald ein Abschnitt sichtbar ist |
| [Erscheinungsbild](company-edit-appearance.md) | Logo, Farben, Mail-Aussehen | Tochterfirmen, Recht `AlterCorporateIdentity` |
| [Plattform](company-edit-platform.md) | Abrechnung, Datenquelle, automatische Prüfung, Technik | Tochterfirmen, sobald ein Abschnitt sichtbar ist; Kennzeichnung „nur Admins“ |

Die Reiter „Kommunikation“, „Erscheinungsbild“ und „Plattform“ gibt es nur bei **Tochterfirmen**; „Kommunikation“
zusätzlich erst, nachdem die Firma angelegt ist.

!!! note "Rechte"
    Welche Abschnitte Sie sehen, hängt von Ihren Rechten ab. Die Rolle **Administrator** hat alle Rechte, ein
    **Fuhrparkleiter** unter anderem `ManageCompany` und `ManageMailTemplates`. Zusätzliche Rechte vergibt ein
    Administrator über benutzerdefinierte Rollen unter **System › Einstellungen**; dort stehen die Rechte mit
    genau diesen Namen. Die Abschnittsseiten nennen das jeweils nötige Recht.

## Gleiche Bedienung überall

**Übernehmen oder eigener Wert.** Jede Einstellung, die eine Tochterfirma von ihrer Mutterfirma
übernehmen kann, hat die Wahl **„Übernehmen“** / **„Eigener Wert“** (je nach Einstellung auch „Eigenes
Erscheinungsbild“, „Eigene Gewichtung“ oder „Eigene Angaben festlegen“). Bei „Übernehmen“ steht darunter,
was gilt und woher es kommt, zum Beispiel „↳ Übernommen von Fleet Partner GmbH: 7 Tage“. Ist in der
ganzen Kette nichts eingestellt, gilt der Standardwert. Am Reitertitel zeigt „n angepasst“, wie
viele Einstellungen die Firma selbst setzt.

**Speichern.** Alle Änderungen gelten erst nach **„Speichern“** (oben rechts in der Kopfzeile, mit Anzeige der
ungespeicherten Änderungen und „Zurücksetzen“). Verlassen Sie die Seite mit ungespeicherten Änderungen, fragt das
System nach. Was ohne Speichern **sofort wirkt**, ist mit **„wirkt sofort“** gekennzeichnet: die
Datenquelle-Umstellung und die API-Schlüssel, die Mail-Texte sowie am Absender-Postfach „Test-Mail senden“,
„Mail-Konto speichern“ und „Verbindung löschen“. „Mit Microsoft/Google verbinden“ speichert vorher Ihre offenen
Änderungen. Die Carano-Zugangsdaten im selben Abschnitt wie die Datenquelle gelten dagegen erst nach „Speichern“.

**Aktionen in der Kopfzeile:** **Tochterfirma anlegen**, **Tochterfirma aus Carano importieren** (Recht
`CaranoImport`; ausgegraut, solange die Carano-Zugangsdaten fehlen oder die Datenquelle nicht „Carano“ ist) und
**Firma löschen** (nur bei Tochterfirmen und mit Recht `DeleteCompany`; löscht die Firma und alle ihre Benutzer
unwiderruflich, nach einer Rückfrage).

## Anleitungen

- [Neue Kundenfirma einrichten](guide-new-customer.md)
- [Erinnerungen und Eskalation einstellen](guide-reminders-escalation.md)
- [Eigenes Postfach als Absender](guide-own-mailbox.md)
