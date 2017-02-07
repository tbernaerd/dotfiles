#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed zsh as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install htop
brew install grc
brew install figlet
brew install archey

# Install cask apps
brew cask install appcleaner
brew cask install alfred
brew cask install calibre
brew cask install dash
brew cask install deluge
brew cask install disk-inventory-x
brew cask install dropbox
brew cask install filezilla
brew cask install firefox
brew cask install flux
brew cask install macdown
brew cask install microsoft-office
brew cask install plex-home-theater
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install telegram
brew cask install vagrant
brew cask install hipchat
brew cask install google-chrome
brew cask install iterm2
brew cask install phpstorm 
brew cask install sequel-pro
brew cask install iterm2
brew cask install atom
brew cask install 1password
brew cask install karabiner
brew cask install whatsapp
brew cask install mpv


# Remove outdated versions from the cellar.
brew cleanup
