# UVV-Unterweisung (E-Learning)

Neben der Führerscheinkontrolle bildet das System die jährliche **UVV-Fahrerunterweisung**
(Unfallverhütungsvorschrift) als Online-Schulung ab. Die Schulung selbst läuft auf der
angebundenen E-Learning-Plattform **Dekra Safety Web**; Einladung, Erinnerung, Eskalation
und Erfolgs-Nachweis steuert das System.

## Voraussetzung: Service buchen

Die UVV-Unterweisung ist ein buchbarer Service. Er wird je Firma unter
**Firma bearbeiten → Gebuchte Services** aktiviert. Erst danach fordert das System
Unterweisungen für die Fahrer dieser Firma an.

## Ablauf für den Fahrer

1. Der Fahrer erhält per E-Mail (oder SMS) eine Einladung mit einem persönlichen Link
   zur Online-Unterweisung — **ohne Anmeldung, ohne Passwort**.
2. Er absolviert die Schulung inklusive Abschlusstest direkt im Browser.
3. Das Ergebnis wird automatisch an das System zurückgemeldet — die Unterweisung
   erscheint als erfolgreich abgeschlossen in der Kontroll-Historie des Fahrers.

## Fälligkeit und Eskalation

UVV-Unterweisungen folgen demselben Fälligkeits-Lebenszyklus wie Führerscheinkontrollen:

| Stufe | Zeitraum | Was passiert |
|---|---|---|
| Normal | 0–7 Tage | Einladung versendet |
| Fällig | 8–14 Tage | Erste Erinnerung |
| Überfällig | 15–21 Tage | Zweite Erinnerung |
| Eskalation | ab 22 Tagen | Info an den Fuhrparkleiter, Aufnahme in den wöchentlichen Eskalations-Report |

Den aktuellen Stand sehen Sie auf dem Dashboard („UVV ausstehend" / „UVV versäumt")
sowie je Fahrer im Reiter **Kontrollen / Unterweisungen** der Benutzer-Detailansicht.

!!! note
    Das Unterweisungs-Intervall (Standard: jährlich) wird je Firma bzw. je Fahrer über das
    Fahrerunterweisungs-Intervall in den Stammdaten gesteuert.
