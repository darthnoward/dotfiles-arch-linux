xset r rate 270 30
xrandr --dpi 120
xrdb --merge ~/.Xresources
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE+@
export GDK_DPI_SCALE=0.5
exec i3
