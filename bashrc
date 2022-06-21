case $- in
    *i*) ;;
      *) return;;
esac

alias grep='grep --color=auto --extended-regexp'
alias ls='ls -G'
alias tree='tree -C'

GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM=auto
PROMPT_COMMAND='__git_ps1 "${VIRTUAL_ENV+($(basename ${VIRTUAL_ENV})) }\[\e[32m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[0m\]" "\$ "'

gpgconf --launch gpg-agent
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR=/usr/local/bin/vim
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden --bind '?:toggle-preview' --exact"
export FZF_CTRL_T_COMMAND='ag -g ""'
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -n 100'"
export FZF_DEFAULT_COMMAND='ag -g ""'
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=
export HISTSIZE=
export LESS=FRX
export LESSOPEN="|/usr/local/bin/lesspipe.sh %s"
export LESS_ADVANCED_PREPROCESSOR=1

export PATH="/usr/local/opt/node@16/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

_fzf_compgen_path() {
  ag -g "" "$1"
}

source /usr/local/etc/bash_completion
source /usr/local/opt/fzf/shell/completion.bash
source /usr/local/opt/fzf/shell/key-bindings.bash
