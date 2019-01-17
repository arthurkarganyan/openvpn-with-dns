#!/usr/bin/env bash
adapters=()

# Set bash delimeter to be line break (temporarily)
IFSSAVE=$IFS
IFS=$'\n'
# Get adapter list
for i in `networksetup -listallnetworkservices |grep -v denotes`; do
        adapters=(${adapters[@]} "$i")
done
for adapter in "${adapters[@]}"
do
echo updating dns for $adapter
networksetup -setdnsservers "$adapter" empty
networksetup -setsearchdomains "$adapter" empty
done
