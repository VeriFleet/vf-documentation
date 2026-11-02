# Design & branding (tenant CI)

Every company can adapt the look of the system and of the emails it sends to its own corporate identity. The
settings are spread over three tabs of **Edit a company**:

| What | Where |
|---|---|
| Logo and colors of the interface and the emails | [Appearance](company-edit-appearance.md) |
| Product name, support address, imprint, privacy in the emails; email texts | [Communication](company-edit-communication.md) |
| Software addresses, email variant, own CSS | [Platform › Technical settings](company-edit-platform.md) |

## Inheritance across the company hierarchy

Settings are **taken over from top to bottom**: if a company has no configuration of its own, its parent company's
applies, up to the top level where the system default applies. It is enough to maintain branding once at tenant
level. For every setting the page shows what applies and where it comes from.

## Logo and colors

Maintain logo (light and dark) and colors in the **Appearance** tab. The **main color**, the **second color** and
the **logo** apply to the interface **and** the emails. If the emails need something else, choose
**"Different for emails only"** there.

## Details in the emails and technical settings

| Setting | Effect | Tab |
|---|---|---|
| **Product name** | Name of the software in emails | Communication |
| **Support email** | Contact address in the profile menu and emails | Communication |
| **Imprint URL**, **Privacy URL** | Links in the emails | Communication |
| **Driver software URL**, **Admin software URL**, **Splash link** | Links in the emails | Platform |
| **Sender address at the VeriFleet mailbox** | Sender of this company's system emails | Platform |
| **Email adaptation** | Choice of a customer-specific email template variant | Platform |

## Adapt email templates

Adapt the **texts of the email templates** per company in the [Communication](company-edit-communication.md) tab
under **Email texts**. Templates that are not adapted are inherited from the parent company.

!!! tip
    After branding changes, check the result with a test check request to your own test driver before the next
    automatic request wave runs.
