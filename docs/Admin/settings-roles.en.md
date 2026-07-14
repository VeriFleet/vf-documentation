# Settings — custom roles

Under **Settings**, system administrators define custom roles with freely combined
permissions. Custom roles complement the built-in system roles (e.g. "driver",
"fleet manager") with precisely tailored permission profiles.

![Settings — roles](images/settings-roles.png){ border-effect="line" thumbnail="true" width="100%" }

!!! note
    This area is only visible to users with the **system administrator** role.

## Creating a role

1. Click **"New role"**.
2. Choose a descriptive name (e.g. "Follow-up checks + reporting").
3. Select the desired permissions from the list.
4. Save the role.

## Assigning a role

Custom roles are assigned in the **user detail view** — they appear alongside the system
roles in the role selection. A user can hold several roles at once; the permissions are
additive.

## Editing and deleting

In the role list you can **edit** (pencil icon) or **delete** (bin icon) existing roles at
any time. Changes to a role take effect immediately for every user holding that role.

!!! tip
    Grant permissions as sparingly as possible. Prefer several small, clearly scoped roles
    over one large catch-all role.
