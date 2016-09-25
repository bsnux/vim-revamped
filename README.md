# Personal vim configuration

Tested on *Mac OS X* with *Vim*, *MacVim* and *VimR*

## Installation

Clone this repo. to your favorite location:

    $ git clone https://github.com/bsnux/vim-revamped.git

Create directories:

    $ mkdir -p ~/.vim/bundle

Setup *Vundle*:

    $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Create *symlinks*:

    $ ln -s vim-revamped/vimrc ~/.vimrc
    $ ln -s vim-revamped/gvimrc ~/.gvimrc

Open *Vim* and launch plugin installation:

    $ vim
    :PluginInstall

Done!
