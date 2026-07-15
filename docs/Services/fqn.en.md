# Driver qualification card (DQC)

For professional drivers the system checks — in addition to the driving licence — the
**driver qualification card** according to the German professional-driver qualification
act (BKrFQG), i.e. the proof of initial qualification or periodic training (formerly
"code 95").

## Prerequisite: book the service

The DQC check is a bookable service. It is enabled per company under
**Edit company → Booked services** as **"FQN check"**.

## Flow for the driver

The DQC check works just like the driving-licence check:

1. The driver receives a request by e-mail or SMS with a personal link — no sign-in.
2. They photograph their driver qualification card with their smartphone.
3. The system checks the document automatically (authenticity, data, expiry date).
4. If the result is not conclusive, the check goes to the **follow-up check** where a
   human decides.

## Due states and escalation

DQC checks run through the same due-state lifecycle as all checks (normal → due →
overdue → escalation, roughly 7 days per stage). Escalations are reported to the fleet
manager and appear in the weekly escalation report.

On the dashboard, the KPIs **"DQC pending"** and **"DQC missed"** show the current state;
the per-driver history is in the **Checks / instructions** tab of the user detail view.

!!! tip
    The expiry date of the qualification card feeds into the **early warning** tab in
    reporting — there you can see in good time which qualifications expire within the
    next 30/60/90 days.
