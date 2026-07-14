# Design & Branding (Mandanten-CI)

Jede Firma kann das Erscheinungsbild des Systems und der versendeten E-Mails an die eigene
Corporate Identity anpassen. Alle Einstellungen finden Sie unter **Firma bearbeiten** in
den Abschnitten **Backend-Anpassung** und **Mailing-/Client-Anpassung**.

## Vererbung über die Firmenhierarchie

Branding-Einstellungen werden **von oben nach unten vererbt**: Hat eine Firma keine eigene
Konfiguration, gilt automatisch die ihrer übergeordneten Firma — bis hinauf zur obersten
Ebene, wo der System-Standard greift. So genügt es, das Branding einmal auf Mandanten-Ebene
zu pflegen; alle Unterfirmen übernehmen es automatisch.

## Backend-Anpassung (Oberfläche)

- **Design/Theme:** Farbschema der Admin-Oberfläche, gepflegt über Farbwähler
  (Primär-/Akzentfarben) — keine CSS-Kenntnisse nötig.
- **Logos:** Eigenes Logo für die Anwendung, separat für helles und dunkles Design.
- **Experten-CSS:** Zusätzliche CSS-Regeln für Feinanpassungen. Wird nach dem Theme
  geladen und überschreibt es punktuell.

## Mailing-/Client-Anpassung (E-Mails & Links)

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
(Abschnitt *Mail-Template-Anpassung*). Nicht angepasste Vorlagen erben — wie das übrige
Branding — von der übergeordneten Firma.

!!! tip
    Prüfen Sie nach Branding-Änderungen das Ergebnis mit einer Test-Prüfaufforderung an
    einen eigenen Test-Fahrer, bevor die nächste automatische Aufforderungswelle läuft.
