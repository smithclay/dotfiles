#!/bin/bash

ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install zsh
echo "/usr/local/bin/zsh" >> /etc/shells
sudo chsh -s /usr/local/bin/zsh $(whoami)

brew install wget --enable-iri

brew install git

brew install node

# Remove outdated versions from the cellar
brew cleanup