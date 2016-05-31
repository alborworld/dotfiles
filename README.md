Dotfiles
--------
This repository includes all of my custom dotfiles.  They should be cloned to
a directory of your choice (e.g. `~/.config/dotfiles`). The included setup script 
creates symlinks from your home directory to the files which are located in the cloned 
directory.

INSTALLATION
------------
1. Make sure zsh, curl, tmux, starship, fzf are installed and enabled. For zsh, change the shell:
   * `$ sudo chsh -s $(which zsh) ${USER}`

   In Mac OS install also `coreutils`:
   * `$ brew install coreutils`
   
4. Install zim
   * `curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh`

5. Install vim:
   * UBUNTU: `$ sudo apt-get install vim`
   * MAC OS: `$ sudo brew install vim`

6. In vi(m), run `:PlugInstall` to refresh/update the plugins
