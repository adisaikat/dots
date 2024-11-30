#!/bin/bash

# Path to the script you want to run
SCRIPT_TO_RUN="/home/adisaikat/.config/ags/scripts/rand/randomwall.sh"

# Interval in seconds
INTERVAL=300

# Infinite loop
while true; do
    # Run the other script
    bash "$SCRIPT_TO_RUN"

    # Wait for the specified interval
    sleep $INTERVAL
done
