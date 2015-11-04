# My dotfiles

I stole most of it elsewhere, mostly from:

* [Zach Holman](https://github.com/holman/dotfiles)
* [Bert _devops_ Pattyn](https://github.com/dextro/dotfiles)

## Not included

First of all, let's list the things that are **not** included:

* Homebrew installer
* Brew and brew cask lists
* OS X tweaks

These are all handled by our Wijs implementation of Sumerlumic. Superlumic is
a wrapper over Ansible, written by [Roderik Van der Veer](https://github.com/superlumic)
and adapted by me and Bert _devops_ Pattyn to suit our needs at [Wijs](https://wijs.be/)

After Superlumic has ran on a new installation of OS X, my software and configs
are exactly the way I like them.

See how it works here:

* [Our fork of the Superlumic wrapper](https://github.com/wijs/superlumic)
* [Our config](https://github.com/wijs/superlumic-config)
* [My tombernaerd.yml config file](https://github.com/wijs/superlumic-config/blob/master/users/tombernaerd.yml)

## How it works

### Install

Run this:

```sh
git clone https://github.com/tbernaerd/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
installer/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

### topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.
