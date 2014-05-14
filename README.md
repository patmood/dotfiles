# Patrick's Dotfiles

## How to use:

Run `create_links.sh` to backup existing files, then create symlinks to the files in this directory.

The script above need to be executable, so run `chmod +x create_links.sh` to change permissions and then `./create_links.sh` to execute.

To set fish as the default shell get the path to fish with `which fish` then run `sudo chsh -s /usr/local/bin/fish patrickmoody`

## Vundle

Setup Vundle: `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

To install plugins, open vim and run `:PluginInstall`
