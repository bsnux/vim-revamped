# Personal vim configuration

*Vim 8.0* personal configuration optimized for *Python* development.

## Installation

Clone this repo. to your favorite location:

```
$ git clone https://github.com/bsnux/vim-revamped.git
```

Update submodules:

```
$ cd vim-revamped
$ git submodule init
$ git submodule update
```

Create *symlinks* on your *HOME* dir:

```
$ ln -s vim-revamped/vimrc ~/.vimrc 
$ mkdir ~/.vim
$ ln -s vim-revamped/UltiSnips ~/.vim/UltiSnips
$ ln -s vim-revamped/after ~/.vim/after
$ ln -s vim-revamped/pack ~/.vim/pack
```

## How to install plugins using Vim 8

Just clone *git* plugin repo as a *git submodule*. Example:

```
$ cd .vim/
$ git submodule add https://github.com/easymotion/vim-easymotion.git pack/plugins/start/vim-easymotion/
```

## Using italics in Terminal and iterm2

See: https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/

Basically, you have to use a font with support for italics and follow these steps:

Add the following lines to `~/.xterm-256color-italic.terminfo` file:

```
# A xterm-256color based TERMINFO that adds the escape sequences for italic.
xterm-256color-italic|xterm with 256 colors and italic,
  sitm=\E[3m, ritm=\E[23m,
  use=xterm-256color,
```

Then execute the following command:

```
tic xterm-256color-italic.terminfo
```

Next step will be to add following line to your profile file (`~/.zshrc` or similar):

```
export TERM=xterm-256color-italic
```

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
* `,y`: Google YAPF code formater
* `X`: Encrypt file
