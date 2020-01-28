#!/usr/bin/env bash

# Ensure the i3subscribe quits when we do
trap 'kill $(jobs -p)' EXIT

# Ensure that any currently running hideIt instances close
ps -elf | grep "hideIt.sh" | grep -v "grep" | awk '{ print $4 }' | while read pid; do
	kill $pid
done

# Hide the polybar after a binding is completed
i3subscribe binding | while read -r event; do
	$HOME/github/hideIt.sh/hideIt.sh -N '^polybar-bottom_.*$' --hide 2>/dev/null >/dev/null
done &

# Start hideIt.sh to manage the polybar visibility
$HOME/github/hideIt.sh/hideIt.sh -N '^polybar-bottom_.*$' -S -d bottom -w
