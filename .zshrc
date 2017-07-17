# Created by newuser for 5.0.7

# Can not exit C-d
setopt IGNOREEOF

export LANG=ja._JP.UTF-8

# Use Color
autoload -Uz colors
colors
autoload -Uz compinit
compinit

# Like emacs
bindkey -e

# remove overlapped command from history
setopt histignorealldups
# care misstype
setopt correct
# {a-c} -> a b c
setopt brace_ccl

setopt always_last_prompt
setopt auto_menu
setopt list_types

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Alias
alias ls='ls -F --color'
alias ../='cd ../'


# Prompt
## Escape sequence
setopt prompt_subst
PROMPT=$'%{\e[$[32+$RANDOM % 5]m%}%U%B%m@%n%b%%%{\e[m%}%u '
RPROMPT=$'%{\e[33m%}[%~]%{\e[m%}'
## when use setopt correct
SPROMPT=$'%{\e[31m%}%Bcorrect%b%{\e[m%}: %R -> %r ? (y or n): '

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

