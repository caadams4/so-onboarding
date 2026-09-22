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

## Engagement API

Client-facing work talks to `api.strikeonecs.io`. Version 2 has been live
since June (`/v2/engagements`, `/v2/reports`). v1 is deprecated and will be
switched off on 30 September, so do not copy examples that use `/v1/`.

## Audit logging

The engagement API and `s1` use the Rootline SDK for audit events. We are
pinned to 2.5.x until PLAT-388 is done, so if you add it to a project, pin
the same range (`>=2.5,<2.6`).

## Timesheets

Fill in Ledgerline daily. Finance runs the billing export monthly, and the
weekly cutoff for approvals is Monday 12:00 UK time. Late entries are fine,
but they roll into the next export.

## Local databases

Services use PostgreSQL 16 in production since 7 Sep. If you run a local
container for an engagement, use the 16 image so behaviour matches:

```
docker run --rm -e POSTGRES_PASSWORD="$PGPASSWORD" -p 5432:5432 postgres:16
```

Set `PGPASSWORD` in your shell first; never write it into a file in a repo.

## Git

Repos live under groups `platform/`, `delivery/`, `data/` and `marketing/`.
Branches: `feature/PLAT-123-short-desc`, `fix/...`, `chore/...`.
Commit subjects are imperative with the ticket key at the end:

```
Add retry to sftp upload (PLAT-412)
```
