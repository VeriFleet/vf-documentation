# Reiter „Fahrer & Kontrollen“

Wie oft Fahrer kontrolliert werden, wie sie erinnert werden und wer bei Verzug informiert wird.

!!! note "Wer sieht diesen Reiter?"
    Alle Benutzer mit Zugriff auf die Firma sehen den Abschnitt „Kontroll-Rhythmus“. Die übrigen Abschnitte gibt es
    nur bei bestehenden Tochterfirmen und mit dem Recht `ManageCompany` (Fuhrparkleiter und Administrator).

## Kontroll-Rhythmus

**Kontrolle alle … Tage:** In diesem Abstand wird jeder Fahrer neu kontrolliert. Pflichtfeld, Standard **180 Tage**. Der
Wert gilt nur für diese Firma, nicht für ihre Tochterfirmen, und lässt sich je Fahrer im Benutzerprofil anpassen. Ändern
darf ihn, wer die Firma verwalten darf.

## Aufforderung und Erinnerungen

| Einstellung | Was sie bewirkt | Standard |
|---|---|---|
| **Kontaktkanal** | Wie Fahrer zur Kontrolle aufgefordert werden: **E-Mail** oder **SMS**. Je Fahrer im Benutzerprofil anpassbar. **SMS wird je Nachricht abgerechnet.** | Übernehmen; ohne Vorgabe E-Mail |
| **Abstand der Erinnerungen** | Tage zwischen Aufforderung, Erinnerungen und Eskalation, wenn ein Fahrer nicht reagiert. 1 bis 90 Tage. | Übernehmen; ohne Vorgabe 7 Tage |

Unter den Einstellungen zeigt **„So läuft es mit dieser Einstellung ab:“** die Stufen mit Tagen: Aufforderung (Tag 0),
Erinnerung (nach einem Abstand), dringende Erinnerung (nach zwei Abständen) und Eskalation (ab drei Abständen). Bei 7 Tagen
sind das Tag 0, 7, 14 und ab Tag 21.

## Ablauf von Führerschein und Fahrerqualifikation

Die Warnungen gehen **immer per E-Mail**, auch bei Kontaktkanal SMS, und nur an Benutzer mit der Rolle Fahrer. Fahrer ohne E-Mail-Adresse werden nicht gewarnt; sie
erscheinen weiter in der wöchentlichen Mail an die Kontaktadressen der Firma (Liste „Ablaufende Führerscheine“).

| Einstellung | Was sie bewirkt | Standard |
|---|---|---|
| **Warnung vor Ablauf des Führerscheins** | So viele Tage vor dem Ablaufdatum bekommt der Fahrer eine Warn-Mail (0 bis 365), **einmal je Ablaufdatum**. **0 = keine Warnung.** Gilt für Fahrer mit gebuchter Führerscheinkontrolle und bekanntem Ablaufdatum (aus der letzten erfolgreichen Kontrolle). | Übernehmen; ohne Vorgabe keine Warnung |
| **Kontrolle vorziehen** | Legt im Warnzeitraum eine neue Kontrolle an, damit der neue Führerschein vor Ablauf des alten vorliegt. Das geschieht unabhängig von E-Mail-Adresse und Warn-Mail, aber nur, wenn keine Kontrolle offen ist und im Warnzeitraum noch keine angefordert wurde, also höchstens einmal je Zeitraum. Nur möglich, wenn die Warnung eingeschaltet ist. | Übernehmen; ohne Vorgabe aus |
| **Warnung vor Ablauf des Nachweises** und **Prüfung vorziehen** (Abschnitt „Fahrerqualifikation (FQN)“) | Dasselbe für den Fahrerqualifizierungsnachweis. Fahrer, deren Schlüsselzahl 95 noch gültig ist, werden nicht gewarnt. Ist die FQN-Kontrolle nicht gebucht, steht dort stattdessen ein Hinweis. | Übernehmen; ohne Vorgabe keine Warnung, aus |

## Wöchentliche Eskalationsliste

Eine Mail mit bis zu drei Excel-Listen, versandt **freitags um 22 Uhr** (Serverzeit; in der Betriebsumgebung Europe/Berlin)
an die Kontaktadressen unter [Stammdaten & Dienste](company-edit-master-data.md): **„Versäumte Kontrollen“** (Fahrer mit
überfälliger Kontrolle), **„Versäumte Unterweisungen“** (E-Learning) und **„Ablaufende Führerscheine“** (innerhalb des
Warnzeitraums der Führerschein-Warnung). Listen ohne Einträge entfallen; sind alle leer, geht keine Mail. Die Einstellung
gilt nur für diese Firma.

| Auswahl | Bedeutung |
|---|---|
| **Nur eigene Fahrer** | Diese Firma bekommt eine Liste ihrer eigenen Fahrer. |
| **Sammelliste mit Tochterfirmen** | Eine Liste über alle Tochterfirmen; die Tochterfirmen bekommen zusätzlich ihre eigene. |
| **Nur Sammelliste** | Eine Liste über alle Tochterfirmen; die Tochterfirmen bekommen keine eigene. |

Hat eine übergeordnete Firma eine Sammelliste eingestellt, weist die Seite darauf hin, ob die Fahrer dieser Firma dort
zusätzlich oder ausschließlich enthalten sind.

!!! warning
    Ohne Kontakt-E-Mail an der Firma wird keine Sammelliste versendet; die Tochterfirmen erhalten dann
    weiter ihre eigene.
