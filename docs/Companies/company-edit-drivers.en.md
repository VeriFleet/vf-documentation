# Tab "Drivers & checks"

How often drivers are checked, how they are reminded and who is informed when they are late.

!!! note "Who sees this tab?"
    Company administrators ("Manage company" permission). The "Check rhythm" section is visible to everyone; the
    other sections exist for subsidiaries only.

## Check rhythm

**Check every … days:** Each driver is checked again at this interval. The value applies to this company only, not
to its subsidiaries, and can be adjusted per driver in the user profile.

## Request and reminders

| Setting | Effect | Default |
|---|---|---|
| **Contact channel** | How drivers are asked to do the check: **email** or **SMS**. Can be overridden per driver in the user profile. **SMS is charged per message.** | Inherit; email without a setting |
| **Interval between reminders** | Days between request, reminders and escalation if a driver does not react. | 7 days |

Below the settings, **"How it works with this setting"** shows the stages with their days: request (day 0),
reminder, urgent reminder and, from the last interval on, escalation.

## Expiry of licence and driver qualification

| Setting | Effect | Default |
|---|---|---|
| **Warning before licence expiry** | The driver is warned this many days before the expiry date. **0 = no warning.** The warning is always sent by email, even when the contact channel is SMS. | no warning |
| **Bring check forward** | Creates a new check together with the warning so the new licence is on file before the old one expires. Only possible when the warning is on. | off |
| **Warning before proof expires** and **Bring check forward** (DQC) | The same for the driver qualification card. Appears only when the DQC check is booked. | no warning |

## Weekly escalation list

List of drivers with an overdue check, sent **Fridays at 10 pm** to the contact addresses under
[Master data & services](company-edit-master-data.md).

| Choice | Meaning |
|---|---|
| **Own drivers only** | This company gets a list of its own drivers. |
| **Combined list with subsidiaries** | One list across all subsidiaries; the subsidiaries additionally get their own. |
| **Combined list only** | One list across all subsidiaries; the subsidiaries get none of their own. |

!!! warning
    Without a contact email on the company no combined list is sent; the subsidiaries then keep receiving their own.
