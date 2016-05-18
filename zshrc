# Load zgen
source "$HOME/.zgen/zgen.zsh"

# Check if there's no init script
# (After adding/updaring plugins, run 'zgen reset' on the command line and then restart the shell
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # Plugins from oh-my-zsh
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/colored-man
    zgen oh-my-zsh plugins/history
    zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/colorize
    zgen oh-my-zsh plugins/github
    zgen oh-my-zsh plugins/mvn
    #zgen oh-my-zsh plugins/node
    #zgen oh-my-zsh plugins/npm
    zgen oh-my-zsh plugins/aws
    zgen oh-my-zsh plugins/docker
    zgen oh-my-zsh plugins/vagrant
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/python
    zgen oh-my-zsh plugins/virtualenv
    if [[ "$os" -eq "Darwin" ]]; then
        zgen oh-my-zsh plugins/osx
        zgen oh-my-zsh plugins/brew
        zgen oh-my-zsh plugins/brew-cask
    elif [[ "$os" -eq "Linux" ]]; then
        zgen oh-my-zsh plugins/command-not-found
    fi

    # Other plugins
    zgen load zsh-users/zsh-completions src
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load felixr/docker-zsh-completion

    # liquidprompt
    zgen load nojhan/liquidprompt

    # Save akk to init script
    zgen save
fi

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

export ZSH_CUSTOM="$HOME/.config/zsh/"
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Solarized dircolors
eval `dircolors $HOME/.dircolors-solarized/dircolors.256dark`

# NPM completion
#. <(npm completion)
