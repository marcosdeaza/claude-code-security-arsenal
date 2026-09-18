# Authorized use, ethics & scope

This toolkit exists for **authorized** security work: engagements you're paid or
permitted to run, systems you own, CTFs, labs, and education. That framing isn't
decoration — it's the condition under which any of this is legal or acceptable.

## The rule

> **Only test what you are explicitly authorized to test.**
> Unauthorized scanning, exploitation, or intrusion is a crime in most
> jurisdictions (e.g. the U.S. CFAA, the UK Computer Misuse Act, and equivalents
> elsewhere), regardless of intent or the tool used.

## Before any offensive action, confirm one of these

- A signed **Statement of Work (SOW)** or **Rules of Engagement (ROE)**.
- A **bug-bounty program** whose scope explicitly includes the target.
- **Internal testing** you have organizational authority to perform.
- A **CTF** or challenge platform, within its rules.
- A **lab or system you own** and control.

If none apply, stop. The skills in this repo are built to ask for this context
before assisting with active attack planning — that gate is a feature, don't
route around it.

## Defensive and educational use

The defensive skills (incident response, threat hunting, blue team, detection
engineering, GRC, log analysis, supply-chain) are safe to use on your own
environment and are the right entry point when you're not running a sanctioned
offensive engagement.

## Responsible disclosure

Found a real vulnerability? Report it to the owner through their disclosure
channel or a coordinated program. Don't publish working exploits against systems
you don't control, and don't sit on a critical issue.

## Data handling

Treat scoping documents, findings, credentials, and client data as sensitive.
Keep them out of shared logs and out of prompts to third-party services that
aren't part of the authorized engagement.

---

By using this toolkit you take sole responsibility for staying inside the law
and your authorization. The curator and the original skill authors are not
liable for misuse.
