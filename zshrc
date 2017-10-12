# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#
# redshift
# redshift -O 5000

# Path to your oh-my-zsh installation.
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export ZSH=/home/tim/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/local/cuda/bin
export EDITOR=vim


# User configuration
export MANPATH="/usr/local/man:$MANPATH"
export LD_LIBRARY_PATH=~/.local/lib:$LD_LIBRARY_PATH
export PATH=$PATH:~/.local/bin
export CPATH=$CPATH:~/.local/include

# GOPATH
export GOPATH=$HOME/.gopath/

# ssh
export SSH_KEY_PATH="~/.ssh/"

export TERM='xterm'

if [ -z "$TMUX" ]; then
  tmux
fi
