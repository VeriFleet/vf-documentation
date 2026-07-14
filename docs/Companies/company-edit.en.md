# Editing a company

This area manages the central information of the currently selected company. Here you can
change master data, configure additional settings and manage sub-companies.

## Overview

The company edit form is divided into two main areas:

- **Left area**: basic information (name, status, creation date)
- **Right area**: edit fields and advanced configuration

## Editing master data

In the form area on the right you can adjust the company's master data:

- **Name**: official company name
- **Street, postcode, city**: company address
- **Contact e-mail address**: the company's main contact address
- **Check interval (days)**: cycle for recurring checks (e.g. driving-licence check)
- **Booked services**: selection of the active modules/services (e.g. licence check, UVV, DQC)

The company status (active/blocked) is toggled with the switch at the top.

## Advanced settings

Below the master data you find expandable sections for additional configuration:

- **Billing settings**: how the company is invoiced (none / individual / inherited)
- **Backend customization**: theme, logos and expert CSS — see [Design & branding](company-theming.md)
- **Mailing/client customization**: appearance and sender of notifications — see [Design & branding](company-theming.md)
- **Carano connection**: connection to the external Carano system, e.g. via a Carano ID

## Managing sub-companies

At the bottom of the page:

- **Create sub-company**: manually create a subordinate company
- **Import sub-company from Carano**: transfer sub-companies from the Carano system (if connected)

## Further actions

- **Delete company**: removes the company from the system permanently
- **Reset**: discards all unsaved changes
- **Save**: applies all changes

## Notes

- Changes only take effect after clicking **"Save"**.
- Some sections (e.g. Carano connection) are only visible with the corresponding
  permissions or configuration.
- Blocked companies cannot be edited or used in the system.
