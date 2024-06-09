if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec sway
fi

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export HISTFILE="$XDG_DATA_HOME"/bash/history

export EDITOR="nvim"
export READER="zathura"
export VISUAL="nvim"
export CODEEDITOR="nvim"
export TERMINAL="foot"
export BROWSER="qutebrowser"
export COLORTERM="truecolor"
export PAGER="less"
export WM="sway"

export LANG=en_US.UTF-8
export LANGUAGE=en_US:en
export LC_TIME=fi_FI.UTF-8
