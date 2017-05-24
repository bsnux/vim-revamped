# Personal vim configuration

Tested on *Mac OS X* with *Vim*, *MacVim* and *VimR*

Working with *Vim 8.0*

## Installation

Clone this repo. to your favorite location:

    $ git clone https://github.com/bsnux/vim-revamped.git

Create directories:

    $ mkdir -p ~/.vim/bundle

Setup *Vundle*:

    $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Create *symlinks*:

    $ ln -s vim-revamped/dot_vimrc ~/.vimrc
    $ ln -s vim-revamped/gvimrc ~/.gvimrc

Open *Vim* and launch plugin installation:

    $ vim
    :PluginInstall

Done!

# Vim cheatsheet

## Buffers

* `:bd`: Close current buffer
* `:bn`: Go to next buffer

## Folding

* `za`: Toggle folds

## Files explorer

* `Ctrl-e`: Toggle files explorer

## Navigation

* `f<char>`: Move to next `<char>`. Example: `fa` moves to next `a`
* `b<char>`: Move to previous `<char>`. Example: `fb` moves to previous `a`
* `e`: Move to end of current word
* `%`: Go to match parenthesis, bracket or similar
* `H`: Go to top of the screen
* `L`: Go to bottom of the screen
* `M`: Go to medium of the screen

## Tags

Installing `ctags` on Mac OS X:

```
$ brew install ctags
```

You can ignore some folders globally, adding following lines to your `~/.ctags` file:

```
--recurse=yes
--exclude=.git
--exclude=vendor/*
--exclude=node_modules/*
--exclude=db/*
--exclude=log/*
```

Generating tags for current folder:

```
$ ctags .
```

Ignoring generated `tags` file globally:

```
echo "tags" >> ~/.global_ignore
git config --global core.excludesfile $HOME/.global_ignore
```

Usefull commands:

* `:tag name`: Jump to `name` tag
* `vim -t name`: Jump to `name` tag from command line
* `:tn` Move to next definition
* `:tp` Move to previous definition
* `,g`: Jump to definition or declaration (*YouCompletMe* plugin)
* `Ctrl-o`: Jump back from definition or declaration (*YouCompletMe* plugin)
* `Ctrl-i`: Jump again to definition or declaration (*YouCompletMe* plugin)
* `Ctrl-]`: Jump to definition
* `Ctrl-t`: Jump back from definition
* `:Tagbar`: Open tag bar

## Indentation

* `>`: Indent
* `<`: Outdent
* `ggVG=`: Re-indent file
* `=`: Indent selection

## Fugitive: Git

* `,gst`: Open a new window executing **git status**
* `-`: Add file
* `C`: Commit added file/files

## Copying from system clipboard on terminal

```
:put+
```

## Multipe-cursors

`Ctrl-n` will activate multiple-cursors. Every time you click that sequence a
new selection will be marked. Then click `c`, insert your text, click on `Esc` and
all occurrences will be replaced.

## Remote editing

```
$ vim scp://username@host//path/to/file
```

## Macros

1. Start recording by pressing `q`, followed by a lower case character to name the macro
2. Perform any editing actions inside editor, which will be recorded
3. Stop recording by pressing `q`
4. Play the recorded macro by pressing `@` followed by the macro name
5. To repeat macros multiple times, press `:nn @macro_name`. ``nn`` is a number

## Misc

* `:retab`: Replace tabs for spaces
* `,fc`: Searching for conflict markers
