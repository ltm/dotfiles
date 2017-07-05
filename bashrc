case $- in
    *i*) ;;
      *) return;;
esac

alias git=hub
alias grep='grep --color=auto --extended-regexp'
alias ls='ls -G'
alias tree='tree -C'

GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM=auto
PROMPT_COMMAND='__git_ps1 "\[\e[32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]" "\$ "'

. /usr/local/etc/bash_completion
. /usr/local/bin/virtualenvwrapper.sh

gpgconf --launch gpg-agent
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden --bind '?:toggle-preview' --exact"
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -n 100'"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=
export HISTSIZE=

[ -f ~/.fzf.bash ] && source ~/.fzf.bash