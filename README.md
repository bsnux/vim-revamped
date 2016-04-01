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

## Quick Cheatsheet

Simple and quick cheatsheet.

### Buffers

**Ctrl-^** Change buffer to most recent one in similar way to *Command-Tab*

**:bd** Close current buffer

**:bn** Go to next buffer

**:bp** Go to previous buffer

## Folding

**zr** Open all folds

**za** Toggle folds

## Moving

**,,w** Easy motion

**f<char>** Go to *<char>*

**Ctrl-o h** Move to left in *insert* mode

**e** Go to end of current word

**%** Go to match parenthesis, bracket or similar

**^F**: scroll page up

**^B**: scroll page down

## Tags

How to generate tags:

    $ ctags -R --exclude=".git"

How to install **exuberant-ctags**:

    $ brew install exuberant-ctags

**,tt** Open *TagBar*

**Ctrl-]** Jump to tag

**Ctrl-t** Jump back a tag

## Indentation

**>** Indent

**<** Outdent

**ggVG=** Re-indent file

**=**: Indent selection

## Git

**,gst** Open a new window executing **git status**

**-** Add file

**C** Commit added file/files

## Copying from system clipboard on terminal

```
:put +
```

## Misc

**Ctrl-[** ESC

**Tab** Auto-complete

**Ctrl-k** Insert snippet

**Ctrl-e** Toggle *NERDTree* finder

**:retab** Replace tabs for spaces

**Ctrl-n** Activate multiple-cursors

**,c<space\>** Comment selected lines

**,cc** Comment selected lines
