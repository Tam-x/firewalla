#!/bin/bash

: ${FIREWALLA_HOME:=/home/pi/firewalla}

cd $FIREWALLA_HOME
git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
git fetch origin
git checkout -
sync
logger "REBOOT: Leave Beta"
/home/pi/firewalla/scripts/fire-reboot-normal
