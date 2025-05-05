# Benutzer bearbeiten

Diese Anleitung beschreibt, wie bestehende Benutzer im System bearbeitet und verwaltet werden können.

## Navigationspfad

1. **Linke Seitenleiste** > **Benutzer**
2. Wählen Sie einen bestehenden Benutzer aus der Liste aus

## Stammdaten bearbeiten

### Status
- **Aktiv / Gesperrt**: Schaltet den Benutzer frei oder deaktiviert den Zugriff.

### Pflichtfelder und Bearbeitungsoptionen

| Feld | Beschreibung |
|------|--------------|
| **E-Mail-Adresse** | Zur Kommunikation und Versand von Prüfaufforderungen. |
| **Mobil-Telefonnummer** | Optional, für SMS-Benachrichtigungen. Format: `+49...` |
| **Vorname / Nachname** | Vollständiger Name des Benutzers. |
| **Führerscheinnummer** | Wird bei der nächsten Kontrolle automatisch erfasst. |
| **Fahrerunterweisung (Intervall)** | Standard: 180 Tage. Optional veränderbar. |
| **Geburtsdatum** | Für Dokumentations- oder Prüfzwecke. |
| **Abteilung / Personalnummer** | Optionale Zusatzdaten. |
| **Rollen** | Mehrfachauswahl möglich (z. B. `Fahrer`, `Fuhrparkleiter`, `Carano-Import berechtigt`, `Zur Nachkontrolle berechtigt`, `Sub-Firmen erstellen (API)`). |

**Aktionen:**
- **Zurücksetzen**: Setzt alle geänderten Eingaben zurück.
- **Speichern**: Speichert Änderungen dauerhaft im System.

## Aktionen (seitliches Menü)

Spezielle Kategorien, die für den Benutzer aktiviert oder geprüft werden können:

- **Zugang & Sicherheit**
- **FS-Kontrolle**
- **Gefährliche Aktionen**

## Kontrollen / Unterweisungen

Zeigt den Kontrollverlauf des Nutzers:

| Status | Typ | Fälligkeit | Erledigt | Geplant |
|--------|-----|------------|----------|---------|
| ✔️ Erledigt | FSK | 13.03.2025 | 13.03.2025 07:02:41 | 13.03.2025 07:02:41 |
| ❌ Abgebrochen | FSK | überfällig | – | 25.02.2025 17:23:09 |
| … | … | … | … | … |

**Hinweis:** Die Tabelle ist paginiert und zeigt maximal 5–6 Einträge pro Seite. Fälligkeitstypen wie "Normal" und Zustände wie "verkauft" werden hervorgehoben.

---

## Historie

Listet vergangene Aktionen zum Benutzer auf:

| Aktion | Akteur | Zeitpunkt |
|--------|--------|-----------|
| FSK manuell versucht | Support Team1 | 13.03.2025 07:02:41 |
| UVV automatisch angefordert | User | 07.03.2025 15:06:03 |
| Eingeloggt | User | 25.02.2025 17:23:56 |
| … | … | … |

Blätterbar über Seiten. Dient der transparenten Nachverfolgung aller Änderungen und Systemaktionen.

---

## Allgemeine Hinweise

- Felder mit einem Stern (*) sind verpflichtend.
- Daten wie Führerscheinnummer oder Intervalle können automatisiert verarbeitet werden.
- Rollen können mehrfach vergeben werden.
- Prüfen Sie regelmäßig den Reiter **Kontrollen / Unterweisungen**, um Fristen einzuhalten.