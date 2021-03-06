# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ssh="TERM=xterm-256color ssh"

PS1='[\W] '

VIRTUAL_ENV_DISABLE_PROMPT=1
source ~/tools/python-venv/bin/activate

# source: https://github.com/westandskif/rate-mirrors#example-of-everyday-use-on-arch-linux
alias ano_drop_caches='sudo paccache -rk3; yay -Sc --aur --noconfirm'
alias ano_update_system='export TMPFILE="$(mktemp)"; \
    sudo true; \
    rate-mirrors --save=$TMPFILE arch --max-delay=21600 \
      && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
      && sudo mv $TMPFILE /etc/pacman.d/mirrorlist \
      && ano_drop_caches \
      && yay -Syyu --noconfirm'


alias ano_push='git add .; git commit -a -m "<generic commit message>"; git push'

alias gs='git status'

# TODO: alias ls to exa https://github.com/ogham/exa
alias ls='ls -F -h --color=always -v --author --time-style=long-iso'
alias la='ls -a'
alias ll='ls -l'
alias l='ls -l -a'

export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'

alias ed='micro'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# Eternal bash history.
# source: https://stackoverflow.com/a/19533853
# ---------------------
export HISTFILESIZE=-1
export HISTSIZE=-1
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=$HOME/.local/state/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
