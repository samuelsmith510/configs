# Start up keyboard hotkeys
# xmodmap ~/.Xmodmap TODO Move this up higher

# Emacs configuration for Linux
# emacs --daemon TODO Move this up higher
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
alias fakepython="export PATH=/home/user/fakepython:$PATH"
