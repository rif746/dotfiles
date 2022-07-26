xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr 
export XDG_SESSION_TYPE=x11

exec bspwm
