# Follow-up check — detail view

The detail view of a follow-up check shows the captured data of the checked document and
the uploaded images.

### Warning message

- **Document not recognised**
  If the system cannot identify the document automatically, a red warning appears. In
  this case a manual review is required.

### Captured data

| Field | Description |
|-------|-------------|
| **Doc type** | Automatically recognised document type (e.g. "Germany – Id Card (2021)") |
| **Licence no.** | Driving-licence number |
| **First name(s)** | The user's first name |
| **Last name(s)** | The user's last name |
| **Date of birth** | The user's date of birth |
| **Place of birth** | Place of birth |
| **Expiry date** | Expiry date of the document |

### Decision

Review the uploaded images and the captured data, then decide:

- **Approve** — the check counts as successfully completed. A reason is optional.
- **Reject / query** — the check is rejected; a reason (at least 10 characters) is
  mandatory and is stored in the history.
