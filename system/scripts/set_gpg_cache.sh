#!/bin/bash

hour=$(date +%H)

if [ $hour -ge 8 -a $hour -lt 18 ]; then
    cp /home/dimpo/.gnupg/gpg-agent.conf.long /home/dimpo/.gnupg/gpg-agent.conf
else
    cp /home/dimpo/.gnupg/gpg-agent.conf.short /home/dimpo/.gnupg/gpg-agent.conf
fi

gpg-connect-agent reloadagent /bye
