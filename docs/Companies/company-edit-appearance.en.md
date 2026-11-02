# Tab "Appearance"

Logo and colors of the interface and the emails.

!!! note "Who sees this tab?"
    Users with the **"Corporate identity"** permission, for subsidiaries only.

## Logo and colors

Choose **"Inherit"** (from the parent company) or **"Own appearance"**.

| Setting | Effect |
|---|---|
| **Logo (sidebar & login)** | PNG or JPG, at most 500 KB; a wide, transparent logo is recommended. The logo is also used in emails. |
| **Logo for dark background** | Optional, for dark surfaces. |
| **Logo width** sidebar / login | In pixels. |
| **Main color**, **Second color**, info, success, warning, error color | Colors of the interface; main and second color also apply to the emails. |
| Sidebar, header, menu and login background | Optional; only activated colors override the default. |

**Every color** has a hex field (`#RRGGBB`, e.g. `#bb171c`), a color picker and the button **"Use the parent company's
value"**. An invalid format is shown immediately and prevents saving.

!!! warning "Contrast warning"
    Below a contrast of **4.5 : 1** a notice appears: for the main color regarding **white text on the color**, for
    the second color regarding **the color as a link on white**. You can still save the color; the system does not
    suggest fixed colors.

## Emails

Emails use the main color, second color and logo from the appearance. If they need something else, tick
**"Different for emails only"** and enter **Main color of emails**, **Second color of emails** and optionally a
**Logo for emails only** (PNG or JPEG). Without an email logo the appearance logo applies.

Prerequisite: **"Own value"** is chosen under [Communication › Details in the emails](company-edit-communication.md).
With "Inherit" the parent company's values apply.
