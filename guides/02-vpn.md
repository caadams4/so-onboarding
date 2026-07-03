# 2. VPN

Most internal hosts (`git.corp`, `ci.corp`, `board.corp`, `time.corp`) are
only reachable from the office networks or over the VPN. The gateway is
`vpn.strikeonecs.io` and it speaks WireGuard.

## Get a profile

Install the `s1` CLI first (see the tools guide), then:

```
s1 vpn profile create --name "$(hostname)"
```

This writes a WireGuard config to `~/.config/s1/vpn/` and prints the public
key. Your profile is tied to your directory login, so you will be asked to
sign in through the browser.

Import the file into the WireGuard client on your laptop. Managed desktops
already have the client; Linux laptops need the `wireguard-tools` package.

## Connect

```
s1 vpn up
s1 vpn status
```

Status should show a handshake in the last two minutes. Staff addresses come
from `10.40.0.0/16`.

## MTU

Some home routers choke on large packets. If pages half load, set the MTU
on the WireGuard interface to 1280.

## If it does not connect

1. Check you are not on a guest network that blocks UDP.
2. `s1 vpn profile show` and confirm the endpoint is `vpn.strikeonecs.io`.
3. Delete the profile and create it again. Profiles are cheap.
4. Raise a `PLAT` ticket with the output of `s1 vpn status`.
