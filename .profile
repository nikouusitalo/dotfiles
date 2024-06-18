if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec sway
fi
export PATH=$PATH:$HOME/dotfiles//.config/scripts

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
source "$HOME/.bashrc"
