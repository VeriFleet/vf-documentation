# Reiter „Stammdaten & Dienste“

Grunddaten der Firma und welche Dienste sie nutzt.

!!! note "Wer sieht diesen Reiter?"
    Alle Benutzer mit Zugriff auf die Firma. **Name, Anschrift, Kontaktadressen, Sprache und
    Kontroll-Intervall** ändert nur, wer die Firma verwalten darf; für alle anderen sind die Felder
    gesperrt.

## Abschnitt „Firma“

| Einstellung | Was sie bewirkt |
|---|---|
| **Aktiv / Gesperrt** (Schaltfläche oben) | Gesperrte Firmen können im System nicht mehr verwendet werden. |
| **Name**, **Straße und Hausnummer**, **PLZ**, **Stadt** | Anschrift der Firma. Pflichtfelder. |

## Abschnitt „Kontakt und Sprache“

| Einstellung | Was sie bewirkt | Standard |
|---|---|---|
| **Kontakt-E-Mail-Adressen der Fuhrparkleitung** | Diese Adressen erhalten die [wöchentliche Eskalationsliste](company-edit-drivers.md#wochentliche-eskalationsliste) (freitags 22 Uhr). Mehrere Adressen mit Komma oder Semikolon trennen. Pflichtfeld. | – |
| **Sprache der Aufforderungs-Mails an die Fahrer** | Sprache der Mails an Fahrer dieser Firma. | Deutsch |

## Abschnitt „Sicherheit und gebuchte Dienste“

| Einstellung | Was sie bewirkt | Standard |
|---|---|---|
| **Anmeldung mit Bestätigungscode (2FA) erzwingen** | Benutzer geben beim Login zusätzlich einen Code aus der E-Mail ein. Gilt auch für alle Tochterfirmen. | Übernehmen; ohne Vorgabe nicht erzwungen |
| **Gebuchte Dienste** | Bestimmt, welche Kontrollen und Einstellungen es für die Firma gibt (Führerscheinkontrolle, UVV-Fahrerunterweisung, FQN-Kontrolle). Gilt auch für die Tochterfirmen. | Übernehmen; ohne Vorgabe alle Dienste |

Weitere Dienste fragen Sie über **„Weitere Dienste anfragen“** an.

!!! warning
    Ein nicht gebuchter Dienst blendet seine Einstellungen aus, zum Beispiel die FQN-Warnung unter
    [Fahrer & Kontrollen](company-edit-drivers.md).
