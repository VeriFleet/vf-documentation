# Tab "Drivers & checks"

How often drivers are checked, how they are reminded and who is informed in case of delay.

!!! note "Who sees this tab?"
    All users with access to the company see the section "Check interval". The other sections exist only for existing
    subsidiaries and with the `ManageCompany` permission (fleet manager and administrator).

## Check interval

**Check every … days:** Every driver is checked again at this interval. Required, default **180 days**. The value applies
to this company only, not to its subsidiaries, and can be adjusted per driver in the user profile. Only those who may manage
the company can change it.

## Request and reminders

| Setting | What it does | Default |
|---|---|---|
| **Contact channel** | How drivers are asked to do a check: **e-mail** or **SMS**. Adjustable per driver in the user profile. **SMS is charged per message.** | Inherit; without a setting e-mail |
| **Reminder interval** | Days between request, reminders and escalation when a driver does not react. 1 to 90 days. | Inherit; without a setting 7 days |

Below the settings, **"This is how it works with this setting:"** shows the stages with days: request (day 0), reminder
(after one interval), urgent reminder (after two intervals) and escalation (from three intervals). With 7 days that is day 0, 7,
14 and from day 21.

## Expiry of driving licence and driver qualification

The warnings **always go by e-mail**, even with contact channel SMS, and only to users with the driver role. Drivers without an e-mail address are not warned; they
still appear in the weekly mail to the company's contact addresses (list "Expiring licences").

| Setting | What it does | Default |
|---|---|---|
| **Warning before the driving licence expires** | The driver receives a warning mail this many days before the expiry date (0 to 365), **once per expiry date**. **0 = no warning.** Applies to drivers with the licence check booked and a known expiry date (from the last successful check). | Inherit; without a setting no warning |
| **Bring the check forward** | Creates a new check within the warning period so the new licence is on file before the old one expires. This happens regardless of e-mail address and warning mail, but only if no check is open and none has been requested in the warning period yet, so at most once per period. Only possible when the warning is switched on. | Inherit; without a setting off |
| **Warning before the card expires** and **Bring the check forward** (section "Driver qualification (DQC)") | The same for the driver qualification card. Drivers whose code 95 is still valid are not warned. If the DQC check is not booked, a note appears there instead. | Inherit; without a setting no warning, off |

## Weekly escalation list

One mail with up to three Excel lists, sent **Fridays at 10 pm** (server time; Europe/Berlin in the production environment)
to the contact addresses under [Master data & services](company-edit-master-data.md): **"Missed checks"** (drivers with an
overdue check), **"Missed instructions"** (e-learning) and **"Expiring licences"** (within the warning period of the licence
warning). Lists without entries are left out; if all are empty, no mail is sent. The setting applies to this company only.

| Choice | Meaning |
|---|---|
| **Own drivers only** | This company receives a list of its own drivers. |
| **Combined list with subsidiaries** | One list across all subsidiaries; the subsidiaries additionally receive their own. |
| **Combined list only** | One list across all subsidiaries; the subsidiaries receive none of their own. |

If a parent company has set up a combined list, the page says whether this company's drivers are included there in
addition or exclusively.

!!! warning
    Without a contact e-mail on the company, no combined list is sent; the subsidiaries then still receive their own.
