xrdb -merge ~/.config/X11/.Xresources
urxvtd -o -q -f


exec i3 --shmlog-size=26214400
