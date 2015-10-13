# dotfiles
A collection of dotfiles and templates.

## About

This dotfile collection is intended to be used in an OS X development environment,
although much of it will work on a standard UNIX configuration.

**Requires bash shell for shell files.

## What's Inside

A lot of stuff. Really its just some git files and vim stuff.

### Vim User Help

Listed below are a few quick tips for working with the installed vim plugins.

*This is not an exhaustive list*

#### NERDTree

To show the file tree, type ':NERDTree' in the Vim command window. The following
commands can be used be substituting the * with the following commands.

```sh
:NERDTree-*
```

Type 'help NERDTreeMappings' to read through all of the default keyboard
shortcuts. These are the ones I use most frequently.

* 't': Open the seelcted file in a new tab
* 'i': Open the selected file in a horizontal split window
* 's': Open the selected file in a vertical split window
* 'I': Toggle hidden files
* 'm': Show the NERD Tree menu
* 'R': Refresh teh ree, useful if files change outside of Vim
* '?:' Toggle NERD Tree's quick help

#### GitGutter

You can explicitly turn vim-gitgutter off and on (defaults to on):

* turn off with `:GitGutterDisable`
* turn on with `:GitGutterEnable`
* toggle with `:GitGutterToggle`.

You can turn the signs on and off (defaults to on):

* turn on with `:GitGutterSignsEnable`
* turn off with `:GitGutterSignsDisable`
* toggle with `:GitGutterSignsToggle`.

And you can turn line highlighting on and off (defaults to off):

* turn on with `:GitGutterLineHighlightsEnable`
* turn off with `:GitGutterLineHighlightsDisable`
* toggle with `:GitGutterLineHighlightsToggle`.

## How to Use

If you are on OS X, this should work right out of the box.

### Install

Run this:

```sh
git clone https://github.com/mrobillard/dotfiles.git
make install
```

### Update

To update your local git repository:

```sh
git checkout master
git pull origin master
```

To progogate those changes to your environment:

```sh
make update
```

## License

MIT License, Copyright (c) 2015 mrobillard

