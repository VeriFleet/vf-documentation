# Design & Branding (Mandanten-CI)

Jede Firma kann das Erscheinungsbild des Systems und der versendeten E-Mails an die eigene
Corporate Identity anpassen. Die Einstellungen verteilen sich auf drei Reiter von **Firma bearbeiten**:

| Was | Wo |
|---|---|
| Logo und Farben der Oberfläche und der Mails | [Erscheinungsbild](company-edit-appearance.md) |
| Produktname, Support-Adresse, Impressum, Datenschutz in den Mails; Mail-Texte | [Kommunikation](company-edit-communication.md) |
| Adressen der Software, Mail-Variante, eigenes CSS | [Plattform › Technische Einstellungen](company-edit-platform.md) |

## Vererbung über die Firmenhierarchie

Einstellungen werden **von oben nach unten übernommen**: Hat eine Firma keine eigene Konfiguration, gilt die
ihrer übergeordneten Firma, bis hinauf zur obersten Ebene, wo der System-Standard greift. Es genügt, das
Branding einmal auf Mandanten-Ebene zu pflegen. Bei jeder Einstellung zeigt die Seite, was gilt und woher es
kommt.

## Logo und Farben

Logo (hell und dunkel) und Farben pflegen Sie im Reiter **Erscheinungsbild**. Die **Hauptfarbe**, die
**Zweitfarbe** und das **Logo** gelten für die Oberfläche **und** für die Mails. Brauchen die Mails etwas
anderes, wählen Sie dort **„Abweichend nur für Mails“**.

## Angaben in den Mails und Technik

| Einstellung | Wirkung | Reiter |
|---|---|---|
| **Produktname** | Name der Software in Mails | Kommunikation |
| **Support-E-Mail** | Kontaktadresse im Profil-Menü und in Mails | Kommunikation |
| **Impressum-URL**, **Datenschutz-URL** | Links in den Mails | Kommunikation |
| **Fahrersoftware-URL**, **Adminsoftware-URL**, **Splash-Link** | Links in den Mails | Plattform |
| **Absenderadresse beim VeriFleet-Postfach** | Absender der System-Mails dieser Firma | Plattform |
| **E-Mail-Adaption** | Auswahl einer kundenspezifischen Mail-Vorlagen-Variante | Plattform |

## Mail-Vorlagen anpassen

Die **Texte der Mail-Vorlagen** passen Sie je Firma im Reiter [Kommunikation](company-edit-communication.md)
unter **Mail-Texte** an. Nicht angepasste Vorlagen werden von der übergeordneten Firma übernommen.

!!! tip
    Prüfen Sie nach Branding-Änderungen das Ergebnis mit einer Test-Prüfaufforderung an
    einen eigenen Test-Fahrer, bevor die nächste automatische Aufforderungswelle läuft.
