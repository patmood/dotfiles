# Patrick's Dotfiles

## How to use:

1. Backup the original dotfile
2. Replace it with a symlink to the file in this repo `ln -s /path/to/file /path/to/symlink`, eg `ln -s ~/dotfiles/.vimrc ~/.vimrc`

## Automated script

Dont use this. CBF updating it. If you're feeling risky:

Run `create_links.sh` to automatically backup existing files, then create symlinks to the files in this directory.

The script above need to be executable, so run `chmod +x create_links.sh` to change permissions and then `./create_links.sh` to execute.

## Vundle

Setup Vundle: `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

To install plugins, open vim and run `:PluginInstall`

## Fish Config

To set fish as the default shell get the path to fish with `which fish` then run `sudo chsh -s /usr/local/bin/fish patrickmoody`

Link `~/.config/fish/config.fish` to `config.fish` in this repo
