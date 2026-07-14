# Editing a user

This guide describes how to edit and manage existing users.

## Navigation path

1. **Left sidebar** > **Users**
2. Select an existing user from the list

## Editing master data

### Status

- **Active / blocked**: enables the user or blocks access.

### Fields and options

| Field | Description |
|-------|-------------|
| **E-mail address** | For communication and check requests. |
| **Mobile phone number** | Optional, for SMS notifications. Format: `+49...` |
| **First / last name** | Full name of the user. |
| **Licence number** | Captured automatically during the next check. |
| **Driver instruction (interval)** | Default: 180 days. Adjustable. |
| **Date of birth** | For documentation and verification purposes. |
| **Department / employee ID** | Optional extra data. |
| **Seal number** | 14-character identifier of an NFC seal — see [NFC seals](user-nfc-tags.md). |
| **Roles** | Multiple selection possible (e.g. `driver`, `fleet manager`, `Carano import`, `follow-up check`, plus custom roles). |

**Actions:**

- **Reset**: discards all changed entries.
- **Save**: persists the changes.

## Actions (side menu)

Special categories that can be triggered or reviewed for the user:

- **Access & security**
- **Licence check**
- **Dangerous actions**

## Checks / instructions

Shows the user's check history:

| Status | Type | Due | Completed | Scheduled |
|--------|------|-----|-----------|-----------|
| ✔️ Done | DLC | 13.03.2025 | 13.03.2025 07:02:41 | 13.03.2025 07:02:41 |
| ❌ Aborted | DLC | overdue | – | 25.02.2025 17:23:09 |
| … | … | … | … | … |

**Note:** the table is paginated. Due-state types such as "normal" and special states are
highlighted.

---

## History

Lists past actions concerning the user:

| Action | Actor | Time |
|--------|-------|------|
| DLC manually attempted | Support Team1 | 13.03.2025 07:02:41 |
| UVV automatically requested | User | 07.03.2025 15:06:03 |
| Signed in | User | 25.02.2025 17:23:56 |
| … | … | … |

Paginated; serves as a transparent trail of all changes and system actions.

---

## General notes

- Fields marked with an asterisk (*) are mandatory.
- Data such as licence numbers or intervals may be processed automatically.
- Multiple roles can be assigned.
- Check the **Checks / instructions** tab regularly to stay within deadlines.
