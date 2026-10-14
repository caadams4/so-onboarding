#!/usr/bin/env bash
# Quick self-check for new starters. Run it after the VPN guide.
# Usage: scripts/check-setup.sh
set -u

[ -f .env ] && . ./.env
VPN_HOST="${SO_EXPECTED_VPN_HOST:-vpn.strikeonecs.io}"

ok()   { printf '  ok    %s\n' "$1"; }
bad()  { printf '  FAIL  %s\n' "$1"; fails=$((fails+1)); }
fails=0

echo "Commands"
for c in git s1 wg curl; do
  command -v "$c" >/dev/null 2>&1 && ok "$c" || bad "$c not found"
done

echo "Names"
for h in "$VPN_HOST" wiki.corp.strikeonecs.io git.corp.strikeonecs.io; do
  getent hosts "$h" >/dev/null 2>&1 && ok "$h resolves" || bad "$h does not resolve"
done

echo "VPN"
# gateway pair moved 12 Oct; the name is stable, so no host list here
if command -v s1 >/dev/null 2>&1; then
  s1 vpn status >/dev/null 2>&1 && ok "s1 vpn status" || bad "VPN not connected"
fi

echo
if [ "$fails" -eq 0 ]; then echo "All good."; else echo "$fails problem(s). See the guides."; fi
exit "$fails"
