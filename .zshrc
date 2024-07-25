eval "$(sheldon source)"

setopt hist_ignore_all_dups
setopt auto_pushd
setopt no_beep
setopt auto_param_keys
setopt mark_dirs
setopt no_auto_remove_slash
setopt magic_equal_subst
setopt inc_append_history
setopt hist_verify
setopt extended_history
setopt hist_no_store
setopt print_eight_bit
setopt share_history

bindkey '^J' self-insert
bindkey '^I' expand-or-complete-prefix
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[[6~' autosuggest-accept

HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history

zstyle ':completion:*' menu select=2
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'

function mkcd() {
    mkdir -p -- "$1" && cd -P -- "$1"
}

function select-history() {
    BUFFER=$(history -n -r 1 | fzf +s --query "$LBUFFER" --height 50% --reverse)
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N select-history
bindkey '^r' select-history

alias la='exa -al --icons'
alias ls='exa'
alias lt='exa -T -L 3 --icons'
alias clip='copyq copy -'

