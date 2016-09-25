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
:put +
```

## Multipe-cursors

`Ctrl-n` will activate multiple-cursors. Every time you click that sequence a
new selection will be marked. Then click `c`, insert your text, click on `Esc` and
all occurrences will be replaced.

## Misc

* `:retab`: Replace tabs for spaces
* `,fc`: Searching for conflict markers
