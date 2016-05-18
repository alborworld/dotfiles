#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dotfiles_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )   # dotfiles directory
dotfiles="gitconfig liquidpromptrc tmux.conf vimrc zshrc"        # list of files/folders to symlink in homedir
zsh_custom_settings="$HOME/.config/zsh"                          # zsh custom settings directory

##########

# Change to the dotfiles directory
echo -n "Changing to the $dotfiles_dir directory ..."
cd $dotfiles_dir
echo "done"

# Remove any existing dotfiles (or symlinks) in homedir, then create symlinks from the homedir to any files in the dotfiles directory specified in $files
for file in $dotfiles; do
    echo "Removing any existing $file dotfile from $HOME"
    rm ~/.$file
    echo "Creating symlink to $file in home directory."
    ln -s $dotfiles_dir/$file ~/.$file
done

# Move zsh custom settings in $HOME/.config/zsh, first removing the existing one
if [ -d "$zsh_custom_settings" ] || [ -L "$zsh_custom_settings" ]; then
    echo "Removing any existing zsh custom settings in $zsh_custom_settings"
    rm -fr $zsh_custom_settings 
fi

echo "Creating symlink to zsh custom settings in $zsh_custom_settings."
if [ ! -d "$HOME/.config" ]; then
    mkdir $HOME/.config
fi

echo "Setting up vim."
mkdir -p $HOME/.vim/autoload

ln -s $dotfiles_dir/zsh $zsh_custom_settings 
