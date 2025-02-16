Dotfiles
--------
This repository includes all of my custom dotfiles. It makes use of [chezmoi](https://www.chezmoi.io/).

INSTALLATION
------------
1. Make sure `chezmoi`, `zsh`, `curl`, `tmux`, `starship`, `fzf`, `vim` and `vim-plug` are installed. 

2. In Mac OS install also `coreutils`:
   * `$ brew install coreutils`

3. Change the shell to zsh:
   * `$ sudo chsh -s $(which zsh) ${USER}`

4. Initialize `chezmoi` with this repo:
   * `$ chezmoi init https://github.com/alborworld/dotfiles.git`

   Check what changes that `chezmoi` will make to your home directory by running:
   * `$ chezmoi diff`

   If you are happy with the changes that `chezmoi` will make then run:
   * `$ chezmoi apply -v`

5. Create vim config directory.
   * `$ mkdir -p $HOME/.vim/autoload`

6. In `vi(m)`, run `:PlugInstall` to refresh/update the plugins.
