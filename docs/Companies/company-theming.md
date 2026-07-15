# Design & Branding (Mandanten-CI)

Jede Firma kann das Erscheinungsbild des Systems und der versendeten E-Mails an die eigene
Corporate Identity anpassen. Alle Einstellungen finden Sie unter **Firma bearbeiten** in den Abschnitten
**Corporate Identity (Logo & Farben)**, **Backendanpassungen**, **Mailing/-Clientanpassungen**
und **Mail-Vorlagen**.

![Firma bearbeiten — Branding-Abschnitte](images/company-edit-branding.png){ border-effect="line" thumbnail="true" width="100%" }

## Vererbung über die Firmenhierarchie

Branding-Einstellungen werden **von oben nach unten vererbt**: Hat eine Firma keine eigene
Konfiguration, gilt automatisch die ihrer übergeordneten Firma — bis hinauf zur obersten
Ebene, wo der System-Standard greift. So genügt es, das Branding einmal auf Mandanten-Ebene
zu pflegen; alle Unterfirmen übernehmen es automatisch.

## Corporate Identity (Logo & Farben)

Hier wählen Sie je Firma zwischen **„Eigenes Branding"** und **„Von übergeordneter Firma
erben"**. Bei eigenem Branding pflegen Sie Farbschema (Farbwähler, keine CSS-Kenntnisse
nötig) und Logos — separat für helles und dunkles Design.

## Backendanpassungen (Experten-CSS)

Zusätzliche CSS-Regeln für Feinanpassungen der Oberfläche. Wird nach dem Theme geladen
und überschreibt es punktuell.

## Mailing/-Clientanpassungen (E-Mails & Links)

Diese Einstellungen bestimmen, wie Prüfaufforderungen und Benachrichtigungen auftreten:

| Einstellung | Wirkung |
|---|---|
| **Produktname** | Name der Software in Mails und Oberfläche |
| **Support-E-Mail** | Kontaktadresse im Profil-Menü und in Mails |
| **URLs** | Links zu Fahrer-Software, Admin-Software, Dokumentation, Impressum, Datenschutz |
| **Primär-/Sekundärfarbe** | Farbgebung der E-Mail-Vorlagen |
| **Logo** | Logo in den E-Mail-Vorlagen |
| **Absenderadresse** | Absender der System-Mails dieser Firma |
| **E-Mail-Adaption** | Auswahl einer kundenspezifischen Mail-Vorlagen-Variante |

## Mail-Vorlagen anpassen

Zusätzlich zum Branding können die **Texte der Mail-Vorlagen** je Firma angepasst werden
(Abschnitt **Mail-Vorlagen**; Umschalter „Mail-Template Anpassung" / „Template durch übergeordnete Firma"). Nicht angepasste Vorlagen erben — wie das übrige
Branding — von der übergeordneten Firma.

!!! tip
    Prüfen Sie nach Branding-Änderungen das Ergebnis mit einer Test-Prüfaufforderung an
    einen eigenen Test-Fahrer, bevor die nächste automatische Aufforderungswelle läuft.
