# Reiter „Stammdaten & Dienste“

Grunddaten der Firma und welche Dienste sie nutzt.

!!! note "Wer sieht diesen Reiter?"
    Alle Benutzer mit Zugriff auf die Firma. **Name, Anschrift, Kontaktadressen, Sprache und
    Kontroll-Intervall** ändert nur, wer die Firma verwalten darf (Recht `ManageCompany`, bei einer neuen
    Tochterfirma `CreateSubCompany`); für alle anderen sind die Felder gesperrt.

## Abschnitt „Firma“

| Einstellung | Was sie bewirkt |
|---|---|
| **Aktiv / Gesperrt** (Umschalter am Anfang des Abschnitts) | Bei einer gesperrten Firma können sich die Benutzer nicht mehr anmelden, und die Fahrer bekommen keine Aufforderungen, Erinnerungen und Warnungen mehr. Die Daten bleiben erhalten. Die **eigene** Firma lässt sich nicht sperren. |
| **Name**, **Straße und Hausnummer**, **PLZ**, **Stadt** | Anschrift der Firma. Pflichtfelder. |

## Abschnitt „Kontakt und Sprache“

| Einstellung | Was sie bewirkt | Standard |
|---|---|---|
| **Kontakt-E-Mail-Adressen der Fuhrparkleitung** | Diese Adressen erhalten die [wöchentliche Eskalationsliste](company-edit-drivers.md#wochentliche-eskalationsliste) (freitags 22 Uhr). Mehrere Adressen mit Komma oder Semikolon trennen. Pflichtfeld. | – |
| **Sprache der Aufforderungs-Mails an die Fahrer** | In dieser Sprache wählt VeriFleet die Mail-Vorlagen für die Fahrer der Firma, zum Beispiel Aufforderungen und Ablauf-Warnungen. | Deutsch |

## Abschnitt „Sicherheit und gebuchte Dienste“

Diesen Abschnitt gibt es nur bei **bestehenden Tochterfirmen**. Er gilt jeweils auch für alle Tochterfirmen darunter.

| Einstellung | Was sie bewirkt | Standard |
|---|---|---|
| **Anmeldung mit Bestätigungscode (2FA) erzwingen** (Erzwingen / Nicht erzwingen) | Benutzer geben beim Login zusätzlich einen Code aus der E-Mail ein. Ändern darf es, wer `ManageCompany` hat. | Übernehmen; ohne Vorgabe nicht erzwungen |
| **Gebuchte Dienste** | Bestimmt, welche Kontrollen und Einstellungen es für die Firma gibt (Führerscheinkontrolle, UVV-Fahrerunterweisung, FQN-Kontrolle). Ändern darf es, wer `AlterCompanyServices` hat. | Übernehmen; ohne Vorgabe alle Dienste |

Wer die Dienste nicht ändern darf, sieht darunter den Link **„Weitere Dienste anfragen“** (eine vorbereitete Mail
an den Support).

!!! warning
    Ein nicht gebuchter Dienst blendet seine Einstellungen aus, zum Beispiel die FQN-Warnung unter
    [Fahrer & Kontrollen](company-edit-drivers.md).
