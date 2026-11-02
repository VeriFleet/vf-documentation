# Reiter „Fahrer & Kontrollen“

Wie oft Fahrer kontrolliert werden, wie sie erinnert werden und wer bei Verzug informiert wird.

!!! note "Wer sieht diesen Reiter?"
    Firmen-Administratoren (Berechtigung „Firma verwalten“). Der Abschnitt „Kontroll-Rhythmus“ ist für
    alle sichtbar; die übrigen Abschnitte gibt es nur bei Tochterfirmen.

## Kontroll-Rhythmus

**Kontrolle alle … Tage:** In diesem Abstand wird jeder Fahrer neu kontrolliert. Der Wert gilt nur
für diese Firma, nicht für ihre Tochterfirmen, und lässt sich je Fahrer im Benutzerprofil anpassen.

## Aufforderung und Erinnerungen

| Einstellung | Was sie bewirkt | Standard |
|---|---|---|
| **Kontaktkanal** | Wie Fahrer zur Kontrolle aufgefordert werden: **E-Mail** oder **SMS**. Je Fahrer im Benutzerprofil überschreibbar. **SMS wird je Nachricht abgerechnet.** | Übernehmen; ohne Vorgabe E-Mail |
| **Abstand der Erinnerungen** | Tage zwischen Aufforderung, Erinnerungen und Eskalation, wenn ein Fahrer nicht reagiert. | 7 Tage |

Unter den Einstellungen zeigt **„So läuft es mit dieser Einstellung ab“** die Stufen mit Tagen:
Aufforderung (Tag 0), Erinnerung, dringende Erinnerung und ab dem letzten Abstand die Eskalation.

## Ablauf von Führerschein und Fahrerqualifikation

| Einstellung | Was sie bewirkt | Standard |
|---|---|---|
| **Warnung vor Ablauf des Führerscheins** | So viele Tage vor dem Ablaufdatum wird der Fahrer gewarnt. **0 = keine Warnung.** Die Warnung geht immer per E-Mail, auch bei Kontaktkanal SMS. | keine Warnung |
| **Kontrolle vorziehen** | Legt mit der Warnung gleich eine neue Kontrolle an, damit der neue Führerschein vor Ablauf des alten vorliegt. Nur möglich, wenn die Warnung eingeschaltet ist. | aus |
| **Warnung vor Ablauf des Nachweises** und **Prüfung vorziehen** (FQN) | Dasselbe für den Fahrerqualifizierungsnachweis. Erscheint nur, wenn die FQN-Kontrolle gebucht ist. | keine Warnung |

## Wöchentliche Eskalationsliste

Liste der Fahrer mit überfälliger Kontrolle, versandt **freitags um 22 Uhr** an die Kontaktadressen
unter [Stammdaten & Dienste](company-edit-master-data.md).

| Auswahl | Bedeutung |
|---|---|
| **Nur eigene Fahrer** | Diese Firma bekommt eine Liste ihrer eigenen Fahrer. |
| **Sammelliste mit Tochterfirmen** | Eine Liste über alle Tochterfirmen; die Tochterfirmen bekommen zusätzlich ihre eigene. |
| **Nur Sammelliste** | Eine Liste über alle Tochterfirmen; die Tochterfirmen bekommen keine eigene. |

!!! warning
    Ohne Kontakt-E-Mail an der Firma wird keine Sammelliste versendet; die Tochterfirmen erhalten dann
    weiter ihre eigene.
