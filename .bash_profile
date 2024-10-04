
if [ -f ~/.profile ]; then
    . ~/.profile
fi

 export QT_QPA_PLATFORM=wayland
 export XDG_CURRENT_DESKTOP=sway
 export XDG_SESSION_DESKTOP=sway
 export XDG_CURRENT_SESION_TYPE=wayland
 export GDK_BACKEND="wayland,x11"
 export MOZ_ENABLE_WAYLAND=1

export WM="sway"
export OPENER="xdg-open"
export COLORTERM="truecolor"
export VIDEO="mpv"
export BROWSERCLI="w3m"
# Created by `pipx` on 2024-07-08 02:05:49
export PATH="$PATH:/home/nikouu/.local/bin"
