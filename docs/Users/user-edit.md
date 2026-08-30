# Benutzer bearbeiten

Diese Anleitung beschreibt, wie bestehende Benutzer im System bearbeitet und verwaltet werden können.

## Navigationspfad

1. **Linke Seitenleiste** > **Benutzer**
2. Wählen Sie einen bestehenden Benutzer aus der Liste aus

![Benutzer bearbeiten](images/user-edit.png){ border-effect="line" thumbnail="true" width="100%" }

## Stammdaten bearbeiten

### Status
- **Aktiv / Gesperrt**: Schaltet den Benutzer frei oder deaktiviert den Zugriff.

### Pflichtfelder und Bearbeitungsoptionen

| Feld | Beschreibung |
|------|--------------|
| **E-Mail-Adresse** | Zur Kommunikation und Versand von Prüfaufforderungen. |
| **Mobil-Telefonnummer** | Für SMS-Benachrichtigungen. Internationales Format mit Ländervorwahl, z. B. `+4916012345678` — Leerzeichen, Bindestriche und Klammern werden automatisch entfernt, eine führende `00` wird zu `+`. |
| **Bevorzugter Kontaktkanal** | Legt fest, ob Kontroll-Aufforderungen per **E-Mail** oder **SMS** versendet werden. **Standard (Firma)** übernimmt den Standard-Kontaktkanal der Firma (siehe [Firma bearbeiten](../Companies/company-edit.md#erweiterte-einstellungen)). Ist der gewählte Kanal nicht bedienbar (z. B. SMS ohne Telefonnummer), weicht das System auf den anderen Kanal aus. |
| **Vorname / Nachname** | Vollständiger Name des Benutzers. |
| **Führerscheinnummer** | Wird bei der nächsten Kontrolle automatisch erfasst. |
| **Individuelles FS-Kontroll-Intervall** | Weicht das Kontroll-Intervall dieses Fahrers vom Firmen-Standard ab, hier aktivieren und in Tagen setzen. Das Unterweisungs-Intervall (UVV) liegt fest bei einem Jahr. |
| **Geburtsdatum** | Für Dokumentations- oder Prüfzwecke. |
| **Abteilung / Personalnummer** | Optionale Zusatzdaten. |
| **Sicherheitssiegel** | 14-stellige Kennung eines NFC-Siegels — siehe [NFC-Siegel](user-nfc-tags.md). |
| **Ausländischer Führerschein** | Aktivieren, wenn das Dokument nicht aus Deutschland stammt — die Format-Validierung der Führerscheinnummer wird dann übersprungen. |
| **Rollen** | Mehrfachauswahl möglich (z. B. `Fahrer`, `Fuhrparkleiter`, `Carano-Import berechtigt`, `Zur Nachkontrolle berechtigt`, `Sub-Firmen erstellen (API)`). |

**Aktionen:**
- **Zurücksetzen**: Setzt alle geänderten Eingaben zurück.
- **Speichern**: Speichert Änderungen dauerhaft im System.

## Aktionen (seitliches Menü)

Spezielle Kategorien, die für den Benutzer aktiviert oder geprüft werden können:

- **Zugang & Sicherheit** (z. B. Passwort setzen/zurücksetzen)
- **FS-Kontrolle** (Führerscheinkontrolle manuell anfordern)
- **FQN-Kontrolle** (Qualifikationsnachweis-Prüfung anfordern)
- **UVV** (Unterweisung anfordern)
- **Gefährliche Aktionen** (z. B. Benutzer löschen, Firma wechseln)

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
| Aufforderung erneut versandt | Support Team1 | 12.03.2025 09:15:10 |
| UVV automatisch angefordert | User | 07.03.2025 15:06:03 |
| Eingeloggt | User | 25.02.2025 17:23:56 |
| … | … | … |

Blätterbar über Seiten. Dient der transparenten Nachverfolgung aller Änderungen und Systemaktionen.

Wird eine bestehende Kontroll-Aufforderung erneut zugestellt (über die Oberfläche oder die Schnittstelle), erscheint der Eintrag **„Aufforderung erneut versandt"** mit Details zum Versand:

| Detail | Bedeutung |
|--------|-----------|
| **Kontrollart** | Führerscheinkontrolle, Qualifikationsprüfung (FQN) oder Unterweisung (UVV) |
| **Zustellung** | *Sofort zugestellt*, *Nachlieferung durch Job* (der Versand wird beim nächsten automatischen Lauf nachgeholt) oder *Versand deaktiviert* |
| **Kanal / Empfänger** | E-Mail oder SMS und die verwendete Adresse bzw. Nummer |
| **Ausgelöst über** | Oberfläche oder API |

Zwischen zwei erneuten Zustellungen an denselben Fahrer gilt eine Wartezeit von 15 Minuten.

---

## Allgemeine Hinweise

- Felder mit einem Stern (*) sind verpflichtend. Bei E-Mail und Mobil-Telefonnummer genügt **einer** der beiden Kontaktwege — mindestens einer muss hinterlegt sein.
- Daten wie Führerscheinnummer oder Intervalle können automatisiert verarbeitet werden.
- Rollen können mehrfach vergeben werden.
- Prüfen Sie regelmäßig den Reiter **Kontrollen / Unterweisungen**, um Fristen einzuhalten.