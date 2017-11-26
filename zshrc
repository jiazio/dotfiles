autoload -U compinit && compinit -u
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z} r:|[-_.]=**'
zstyle ':completion:*:default' menu select=2

setopt list_types
setopt magic_equal_subst
setopt auto_list
setopt auto_pushd
setopt list_packed
setopt nolistbeep
bindkey -e

autoload -Uz colors && colors

if [ -n "${SSH_CONNECTION}" ]; then
	prompt_color=red
else
	prompt_color=cyan
fi

PROMPT="%{$fg_bold[${prompt_color}]%}%n@%m %# %{$reset_color%}"
RPROMPT="%{$fg_bold[${prompt_color}]%}[%~]%{$reset_color%}"
SPROMPT="correct: %R -> %r ? "

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

HISTFILE=~/.zsh_hist
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history 
setopt hist_ignore_all_dups

alias ls="ls -FG"
alias ll="ls -FGl"
alias la="ls -FGAl"
alias l="ls -FG"
alias df="df -h"
alias du="du -h"
