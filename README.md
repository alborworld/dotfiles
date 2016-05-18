Dotfiles
--------
This repository includes all of my custom dotfiles.  They should be cloned to
a directory of your choice (e.g. `~/.config/dotfiles`). The included setup script 
creates symlinks from your home directory to the files which are located in the cloned 
directory.

INSTALLATION
------------
1. Make sure zsh, curl and tmux are installed and enabled. For zsh, change the shell:
`$ sudo chsh -s $(which zsh) ${USER}`

2. Clone zgen in the home directory: 
`$ git clone https://github.com/tarjoilija/zgen.git ~/.zgen`

3. Clone dircolors-solarized in the home directory
`$ git clone https://github.com/seebi/dircolors-solarized.git ~/.dircolors-solarized`

4. Clone the dotfiles and create symlinks
`$ git clone git://github.com/alborworld/dotfiles ~/dotfiles`
`$ cd ~/dotfiles`
`$ ./makesymlinks.sh`

5. Install vim:
UBUNTU: `$ sudo apt-get install vim`
MAC OS: `$ sudo brew install vim`

6. In vi(m), run `:PlugInstall` to refresh/update the plugins
