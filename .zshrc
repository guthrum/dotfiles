# Path to your oh-my-zsh installation.
fpath+=~/.zfunc
export ZSH=/home/tim/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export VISUAL=nvim
export EDITOR=nvim

# User configuration
export MANPATH=/usr/local/man:$MANPATH
export LD_LIBRARY_PATH=~/.local/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export PATH=$PATH:~/.local/bin
export PATH=/home/tim/.cargo/bin:$PATH
export PATH=/usr/local/cuda/bin:$PATH
export PATH=$HOME/.poetry/bin:$PATH
export CPATH=$CPATH:~/.local/include
export JAVA_HOME=/usr/lib/jvm/java-11

# ssh
export SSH_KEY_PATH="~/.ssh/"

export TERM='screen-256color'

DISABLE_AUTO_TITLE="true"

alias tmux="TERM=screen-256color tmux"
alias vim="nvim"
alias gal="git add *.tex *.pdf"
alias python=python3

export PATH=$PATH:/home/tim/bin

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

alias restart_kwin="killall plasmashell; kstart plasmashell"
alias ls=exa
