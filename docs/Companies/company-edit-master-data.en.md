# Tab "Master data & services"

Basic data of the company and the services it uses.

!!! note "Who sees this tab?"
    All users with access to the company. **Name, address, contact addresses, language and check interval** can only
    be changed by those who may manage the company; the fields are locked for everyone else.

## Section "Company"

| Setting | Effect |
|---|---|
| **Active / Blocked** (button at the top) | Blocked companies can no longer be used in the system. |
| **Name**, **Street and house number**, **ZIP**, **City** | Address of the company. Required. |

## Section "Contact and language"

| Setting | Effect | Default |
|---|---|---|
| **Contact email addresses of the fleet management** | These addresses receive the [weekly escalation list](company-edit-drivers.md#weekly-escalation-list) (Fridays 10 pm). Separate several addresses with comma or semicolon. Required. | – |
| **Language of the request emails to drivers** | Language of the emails to drivers of this company. | German |

## Section "Security and booked services"

| Setting | Effect | Default |
|---|---|---|
| **Enforce login with verification code (2FA)** | Users additionally enter a code from an email when logging in. Also applies to all subsidiaries. | Inherit; not enforced without a setting |
| **Booked services** | Decides which checks and settings exist for the company (licence check, UVV instruction, DQC check). Also applies to subsidiaries. | Inherit; all services without a setting |

Request more services with **"Request more services"**.

!!! warning
    A service that is not booked hides its settings, for example the DQC warning under
    [Drivers & checks](company-edit-drivers.md).
