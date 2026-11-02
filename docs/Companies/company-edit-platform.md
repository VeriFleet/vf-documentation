# Reiter „Plattform“

Abrechnung, Datenquelle und Technik. Der Reiter trägt die Kennzeichnung **„nur Admins“**.

!!! note "Wer sieht welchen Abschnitt?"
    **Abrechnung**: Berechtigung „Abrechnung ändern“ · **Woher die Fahrerdaten kommen**: „Carano-Import“ ·
    **Automatische Prüfung**: „Score-Schwellen verwalten“ · **Technische Einstellungen**: „Corporate Identity“.
    Nur bei Tochterfirmen.

## Abrechnung

| Auswahl | Bedeutung |
|---|---|
| **Nicht abrechnen** | Für die Firma wird nichts berechnet. |
| **Eigene Rechnung** | Die Firma bekommt eine eigene Rechnung. |
| **Über die Mutterfirma** | Die Kosten stehen auf der Rechnung der Mutterfirma. |

Siehe auch [Abrechnung](../Admin/invoices.md).

## Woher die Fahrerdaten kommen

Datenquelle der Fahrer (Wie Mutterfirma, Manuell, Carano, REST-Schnittstelle), Carano-Zugangsdaten und
API-Schlüssel. Der Abschnitt **wirkt sofort**. Ausführlich: [Fahrerdaten & Schnittstelle](company-driver-data.md).

## Automatische Prüfung der Führerscheinkontrolle

Gilt nur für die Führerscheinkontrolle. **Abgelehnt wird nie automatisch.**

| Einstellung | Was sie bewirkt |
|---|---|
| **Automatisch abnehmen ab Gesamtwert** | Kontrollen mit mindestens diesem Wert werden ohne Nachkontrolle abgenommen, wenn kein Ausschlussgrund vorliegt (z. B. abgelaufen, Namensabweichung). Bei 0 % wird jede Kontrolle ohne Ausschlussgrund abgenommen. |
| **Zur Ablehnung vorschlagen unter** | Darunter empfiehlt die Nachkontrolle eine Ablehnung; die Entscheidung trifft immer ein Mensch. |
| **Gewichtung der Prüfkriterien** | Welche Kriterien in den Gesamtwert einfließen und mit welchem Gewicht. „Wirksamer Anteil“ zeigt den Anteil an der Summe. Ein abgelaufener Führerschein wird nie automatisch abgenommen. |

Jede Einstellung hat **Übernehmen** / **Eigener Wert**. Der Wert für die Abnahme muss über dem Ablehnungsvorschlag liegen.

## Technische Einstellungen

- **Technik der Mails:** Fahrersoftware-URL, Adminsoftware-URL, Splash-Link, Absenderadresse beim
  VeriFleet-Postfach und E-Mail-Adaption (kundenspezifische Mail-Variante). Änderbar, wenn unter
  [Kommunikation › Angaben in den Mails](company-edit-communication.md) „Eigener Wert“ gewählt ist.
- **Eigenes CSS für die Oberfläche:** Experten-CSS, wird zuletzt angewendet und überschreibt die
  Einstellungen im [Erscheinungsbild](company-edit-appearance.md). Nur für Profis.
