# so-onboarding

First-week guides for new StrikeOne starters: accounts, VPN, laptop, tools.
Rewritten for the summer graduate intake (6 Jul 2026) and refreshed after
the VPN gateway move.

## Contents

- [Contents](#contents)
- [Prerequisites](#prerequisites)
- [Layout](#layout)
- [Reading order](#reading-order)
- [Self-check script](#self-check-script)
- [Contributing](#contributing)
- [TODO](#todo)

## Prerequisites

- A directory login (Corporate IT creates it on day one)
- Access to `git.corp.strikeonecs.io` if you want to send a PR; otherwise
  raise a `PLAT` ticket
- For the self-check script: bash, `getent`, and the `s1` CLI

## Layout

| Path | What it is |
|---|---|
| `guides/01-accounts.md` | Accounts and sign-in |
| `guides/02-vpn.md` | VPN profile and troubleshooting |
| `guides/03-laptop.md` | Laptop first boot, per-office notes |
| `guides/04-tools.md` | Tools, `s1`, git, the engagement API |
| `guides/05-first-week.md` | Day-by-day schedule |
| `team-map.md` | Who to ask about what |
| `glossary.md` | Pod names, tools and jargon |
| `checklist.md` | First-week checklist to copy into your notes |
| `templates/buddy-checklist.md` | For the colleague looking after a starter |
| `scripts/check-setup.sh` | Self-check: commands, names, VPN |
| `docs/` | Archived notes, not current |

## Reading order

Accounts, laptop, VPN, tools, then the glossary. The checklist is the thing
you tick against.

## Self-check script

```
cp .env.example .env    # optional; leave values empty to skip the API check
scripts/check-setup.sh
```

## Contributing

Spotted something wrong? Fix it and open a PR, with the ticket key at the end
of the subject, for example `Fix typo in laptop guide (PLAT-358)`. Keep
commits small and say why in the body.

## TODO

- Security awareness module in the first-week schedule (waiting on Corporate
  IT for dates)
- Translate the accounts guide for the Rotterdam office

Owner: Priya Halvorsen (Platform Engineering)
Last reviewed: 12 Oct 2026 (after the VPN gateway move; previously 29 Jun 2026)
