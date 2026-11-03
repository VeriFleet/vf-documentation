# Tab "Master data & services"

Basic data of the company and which services it uses.

!!! note "Who sees this tab?"
    All users with access to the company. **Name, address, contact addresses, language and check
    interval** can only be changed by those who may manage the company (`ManageCompany` permission, for a new
    subsidiary `CreateSubCompany`); the fields are locked for everyone else.

## Section "Company"

| Setting | What it does |
|---|---|
| **Active / Locked** (switch at the start of the section) | For a locked company, users can no longer sign in and drivers no longer receive requests, reminders or warnings. The data is kept. You cannot lock your **own** company. |
| **Name**, **Street and house number**, **ZIP**, **City** | Address of the company. Required. |

## Section "Contact and language"

| Setting | What it does | Default |
|---|---|---|
| **Fleet management contact e-mail addresses** | These addresses receive the [weekly escalation list](company-edit-drivers.md#weekly-escalation-list) (Fridays 10 pm). Separate several addresses with a comma or semicolon. Required. | – |
| **Language of the request e-mails to drivers** | VeriFleet chooses the mail templates for the company's drivers in this language, for example requests and expiry warnings. | German |

## Section "Security and booked services"

This section exists for **existing subsidiaries** only. It also applies to all subsidiaries below.

| Setting | What it does | Default |
|---|---|---|
| **Require sign-in with a confirmation code (2FA)** (Enforce / Do not enforce) | Users additionally enter a code from the e-mail when logging in. Changeable with `ManageCompany`. | Inherit; without a setting not enforced |
| **Booked services** | Determines which checks and settings exist for the company (driver's license check, APR driver training, FQN control and "Extended data readout"). "Extended data readout" is billed per user of the company and releases the data read from the documents of the checks in the interface. Changeable with `AlterCompanyServices`. | Inherit; without a setting all services |

Those who may not change the services see the link **"Request more services"** below (a prepared mail to support).

!!! warning
    A service that is not booked hides its settings, for example the DQC warning under
    [Drivers & checks](company-edit-drivers.md).
