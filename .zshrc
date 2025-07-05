# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/csori/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias v="nvim $1"


# ssh
eval $(ssh-agent)
clear

# prompt

autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git 

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' unstagedstr '%F{161}%BU%b%f'
zstyle ':vcs_info:git:*' stagedstr '%F{106}%B󱇬%b%f'
zstyle ':vcs_info:git:*' formats '(%F{134}%f %b) %u%c'

precmd() { 
  print -P "%K{254}%B%F{236}%n%f%b%k%K{032}%F{254}%B%b%f %B%2~%b%k%F{032}%f"
}

setopt prompt_subst
PROMPT='%B%F{254}󱞩%f%b '

. "$HOME/.local/bin/env"
