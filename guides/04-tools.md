# 4. Tools

## Where things live

| Tool | What it is | Address |
|---|---|---|
| Strikeboard | Engagement tracker: client, pod, sprint, day rate, status | `board.corp.strikeonecs.io` |
| Ledgerline | Timesheets and billing export | `time.corp.strikeonecs.io` |
| Pathnote | Internal wiki, Markdown-based | `wiki.corp.strikeonecs.io` |
| Gaugeworks | Metrics and alerting front end | `ops-monitor.strikeonecs.io` |
| Issue tracker | Tickets | `jira.corp.strikeonecs.io` |
| Git | Source hosting | `git.corp.strikeonecs.io` |

The tracker hostname still says jira from the tool we retired in 2023. It is
a different product now. Nobody has had time to rename it.

## `s1`

`s1` is our small Go CLI for deploys, VPN profiles and log tailing.
Install it from the intranet package page on Pathnote, then check:

```
s1 version
s1 vpn status
```

Most of you will only need `s1 vpn` and, later, `s1 logs <service>`.
`s1 deploy` needs a role you will not have in week one.

## Timesheets

Fill in Ledgerline daily. Finance runs the billing export monthly.

## Git

Repos live under groups `platform/`, `delivery/`, `data/` and `marketing/`.
Branches: `feature/PLAT-123-short-desc`, `fix/...`, `chore/...`.
Commit subjects are imperative with the ticket key at the end:

```
Add retry to sftp upload (PLAT-412)
```
