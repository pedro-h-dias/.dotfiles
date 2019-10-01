#!/bin/bash

{
  export DEVNAME=/dev/sdb

  firefox && \
  veracrypt -m ro $DEVNAME /mnt/veracrypt1 && \
  ssh-add -c -t 8h /mnt/veracrypt1/.ssh/* && \
  veracrypt -d $DEVNAME && \
  sudo -u $LOGNAME notify-send -i media-removable 'SSH keys loaded' "`ssh-add -l`" && \
  exit
  sudo -u $LOGNAME notify-send -i emblem-unreadable 'Failed to load SSH keys' 'Investigate manually'
} &
