#!/bin/bash

if [ -f /etc/systemd/system/talantino.service ]; then
    echo "systemd unit already installed!"
else
    sudo cp ./backend/talantino.service /etc/systemd/system/talantino.service
    sudo systemctl daemon-reload
    echo "systemd unit installed!"
fi
