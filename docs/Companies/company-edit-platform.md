# Reiter „Plattform“

Abrechnung, Datenquelle und Technik. Der Reiter trägt die Kennzeichnung **„nur Admins“**.

!!! note "Wer sieht welchen Abschnitt?"
    Den Reiter gibt es nur bei Tochterfirmen, sobald Sie einen Abschnitt sehen dürfen.
    **Abrechnung**: Recht `AlterCompanyBilling` · **Woher die Fahrerdaten kommen**: `CaranoImport` (Rolle „Carano-Import
    berechtigt“) · **Automatische Prüfung**: `ManageScoreThresholds` · **Technische Einstellungen**:
    `AlterCorporateIdentity`. Der Administrator hat alle Rechte; weitere vergibt er über benutzerdefinierte Rollen.

## Abrechnung

| Auswahl | Bedeutung |
|---|---|
| **Nicht abrechnen** | Für die Firma wird nichts berechnet. |
| **Eigene Rechnung** | Die Firma bekommt eine eigene Rechnung. |
| **Über die Mutterfirma** | Die Kosten stehen auf der Rechnung der nächsthöheren Firma, die eine eigene Rechnung hat; darunter steht, welche das ist. Hat keine übergeordnete Firma eine eigene Rechnung, wird nicht abgerechnet. |

Siehe auch [Abrechnung](../Admin/invoices.md).

## Woher die Fahrerdaten kommen

Datenquelle der Fahrer (Wie Mutterfirma, Manuell, Carano, REST-Schnittstelle), Carano-Zugangsdaten und
API-Schlüssel. Die **Umstellung der Datenquelle** und die **API-Schlüssel** wirken sofort; die **Carano-Zugangsdaten**
gelten erst nach „Speichern“ oben rechts. Ausführlich: [Fahrerdaten & Schnittstelle](company-driver-data.md).

## Automatische Prüfung der Führerscheinkontrolle

Gilt nur für die Führerscheinkontrolle. **Abgelehnt wird nie automatisch.** Jede Einstellung hat **Übernehmen** /
**Eigener Wert** (die Gewichtung **Eigene Gewichtung**).

| Einstellung | Was sie bewirkt |
|---|---|
| **Automatisch abnehmen ab Gesamtwert** | Kontrollen mit mindestens diesem Wert werden ohne Nachkontrolle abgenommen, wenn kein Ausschlussgrund vorliegt (z. B. abgelaufen, Namensabweichung). Bei 0 % wird jede Kontrolle ohne Ausschlussgrund abgenommen. Ohne Wert in der ganzen Kette wird nichts automatisch abgenommen. |
| **Zur Ablehnung vorschlagen unter** | Darunter empfiehlt die Nachkontrolle eine Ablehnung; die Entscheidung trifft immer ein Mensch. Ohne Wert gilt die Empfehlung der Seite. |
| **Gewichtung der Prüfkriterien** | Aus diesen Kriterien setzt sich der Gesamtwert zusammen: Dokumenten-Echtheit, Aufnahme-Echtheit, Porträt-Abgleich, Maschinenlesbare Zone, Bildqualität, Texterkennung. Je Kriterium **Berücksichtigen** und **Gewicht**; „Wirksamer Anteil“ zeigt den Anteil an der Summe (die Gewichte müssen nicht 100 ergeben, mindestens ein Kriterium muss zählen). |
| **Abgelaufener Führerschein setzt den Gesamtwert auf 0** | Schalter in der Gewichtung. Unabhängig davon wird ein abgelaufener Führerschein nie automatisch abgenommen. |

Der Wert für die Abnahme muss über dem Ablehnungsvorschlag liegen. Wählen Sie „Eigener Wert“, muss ein Wert eingetragen
sein, sonst lässt sich nicht speichern.

## Technische Einstellungen

Der Bereich ist zugeklappt.

- **Technik der Mails:** Fahrersoftware-URL, Adminsoftware-URL, Absenderadresse beim VeriFleet-Postfach, Splash-Link und
  E-Mail Adaptionen. Änderbar, wenn unter [Kommunikation › Angaben in den Mails](company-edit-communication.md)
  **„Eigene Angaben festlegen“** gewählt ist; sonst gelten die Werte der Mutterfirma.

    | Feld | Was es bewirkt |
    |---|---|
    | **Fahrersoftware-URL** | Webadresse der Fahrer-Seite; daraus entsteht der Link in den Aufforderungs-Mails (ein „/“ am Ende ergänzt VeriFleet selbst). Pflichtfeld. |
    | **Adminsoftware-URL** | Webadresse dieser Verwaltungsoberfläche; Link in der Mail mit den Zugangsdaten für neue Benutzer. Pflichtfeld. |
    | **Absenderadresse beim VeriFleet-Postfach (optional)** | Gilt nur, wenn die Mails über das VeriFleet-Postfach gehen (weder eigenes noch geerbtes Postfach). Leer = Standardabsender von VeriFleet. |
    | **Splash-Link** | Zusätzlicher Link für eigene Mail-Texte (Platzhalter `{{splashLink}}`); die mitgelieferten Mails verwenden ihn nicht. |
    | **E-Mail Adaptionen** | Aussehen der Aufforderungs-Mail: „Standard“ oder eine Sondervariante für bestimmte Kundenaktionen (Testdrive). |

- **Eigenes CSS für die Oberfläche:** Experten-CSS, wird zuletzt angewendet und überschreibt die
  Einstellungen im [Erscheinungsbild](company-edit-appearance.md). Nur für Profis.
