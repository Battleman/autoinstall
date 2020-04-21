#!/bin/bash

#make screens behave normally when on gdm
sudo cp ~/.config/monitors.xml /var/lib/gdm3/.config/
sudo chown Debian-gdm:Debian-gdm /var/lib/gdm3/.config/monitors.xml
