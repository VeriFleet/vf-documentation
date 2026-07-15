# UVV driver instruction (e-learning)

In addition to the driving-licence check, the system covers the annual **UVV driver
instruction** (German accident-prevention regulations) as an online course. The course
itself runs on the connected e-learning platform **Dekra Safety Web**; invitation,
reminders, escalation and proof of completion are handled by the system.

## Prerequisite: book the service

The UVV instruction is a bookable service. It is enabled per company under
**Edit company → Booked services** as **"UVV driver instruction"**. Only then does the
system request instructions for this company's drivers.

## Flow for the driver

1. The driver receives an invitation by e-mail (or SMS) with a personal link to the
   online instruction — **no sign-in, no password**.
2. They complete the course including the final test directly in the browser.
3. The result is reported back to the system automatically — the instruction appears as
   successfully completed in the driver's check history.

## Due states and escalation

UVV instructions follow the same due-state lifecycle as driving-licence checks:

| Stage | Period | What happens |
|---|---|---|
| Normal | 0–7 days | Invitation sent |
| Due | 8–14 days | First reminder |
| Overdue | 15–21 days | Second reminder |
| Escalation | from day 22 | Fleet manager is informed; included in the weekly escalation report |

You can see the current state on the dashboard ("UVV pending" / "UVV missed") and per
driver in the **Checks / instructions** tab of the user detail view.

!!! note
    The instruction interval is fixed at **one year** and cannot be changed (statutory
    UVV requirement).
