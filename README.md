Shell Scripts
=============

Collection of random shell scripts.

## wallpaper-rotate.zsh
Sets your Gnome wallpaper to a randomly chosen jpg file from the supplied directory.

Add a crontab entry to rotate every 10 mins:

    */10 * * * * $HOME/bin/wallpaper-rotate.zsh $HOME/Pictures/wallpaper/rotation &>>/tmp/wallpaper-rotate.log

