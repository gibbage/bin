#!/bin/zsh

wallpaper_dir=$1
selected_wallpaper=`find $wallpaper_dir -type f -iname "*.jpg" | shuf -n 1`

# So gsettings will work with cron thanks to Mateusz Jagillo (http://stackoverflow.com/a/10390963)
sessionfile=`find "${HOME}/.dbus/session-bus/" -type f`
export `grep "DBUS_SESSION_BUS_ADDRESS" "${sessionfile}" | sed '/^#/d'`

gsettings set org.gnome.desktop.background picture-uri "file:///$selected_wallpaper"

