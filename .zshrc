###################################################################################################
#         File: .zshrc                                                                            #
#       Author: Paul Bartholomew                                                                  #
# Date Created: 12-Dec-2016                                                                       #
#                                                                                                 #
# Changes:                                                                                        #
#   [13-Dec-2016] Ran compinstall (completions for zsh)                                           #
#   [12-Dec-2016] Running zsh-newuser-install for first time                                      #
###################################################################################################

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch
unsetopt autocd beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/paul/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Customise prompt
export PS1="[%n@%m]:%~$ "
