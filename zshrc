# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="dracula"

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"

plugins=(git virtualenv)

source $ZSH/oh-my-zsh.sh

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

zstyle ':vcs_info:git:*' formats ' (%b)'
ZSH_THEME_VIRTUALENV_PREFIX=' ['

PROMPT=$'%F{green}%n@%m %F{yellow}%~%F{purple}\$(virtualenv_prompt_info)%F{blue}\${vcs_info_msg_0_}%F{white}%E\n\U03bb %E'
RPROMPT=$'%1(j.%F{white}(%j) .)%F{grey}%B%D %*%b'

bindkey  "^[[1~"   beginning-of-line
bindkey  "^[[4~"   end-of-line
bindkey  "^[[3~"  delete-char

export EDITOR='vim'
export GIT_EXTERNAL_DIFF='vimdiff'
