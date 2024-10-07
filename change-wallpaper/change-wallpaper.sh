#!/usr/bin/env bash



property=/backdrop/screen0/monitorDP-4/workspace0/last-image
bg=/usr/share/backgrounds/xfce/bg3.jpg

xfconf-query -c xfce4-desktop -p $property -s $bg