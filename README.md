# How to use

## Installation

1. Install: `brew install coreutils openvpn`
2. Add `*.ovpn` file to the project.
3. Add `*.pass` file to the project containing the passphrase to the `*.ovpn`

## Config alterations

Script path runned before and after VPN is setup should be indicated in `*.ovpn` file:
```
up update-resolv-conf
down update-resolv-conf
```

Script security line should be uncommented:

```
script-security 2
```

These lines should be commented:
```
# user nobody
# group nogroup
```

## Run

Via `./run.sh`
