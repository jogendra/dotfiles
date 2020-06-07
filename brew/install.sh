#!/usr/bin/env bash

# Abort on error
set -e

echo "Checking if Homebrew is already installed..."; 

# Checks if Homebrew is installed
# Credit: https://gist.github.com/codeinthehole/26b37efa67041e1307db
if test ! $(which brew); then
  echo "Installing Homebrew...";
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "Homebrew is already installed...";
fi

# Install the essential brews
brew install carthage
brew install cocoapods
brew install gettext
brew install gh
brew install git
brew install node
brew install lazygit
brew install lsd
brew install tree
brew install yarn
brew install zsh
brew install zsh-completions
brew install neovim
brew install pass
brew install vim

# Install essential casks
brew cask install iterm2
brew cask install charles
brew cask install firefox

# Update and Upgrade
echo "Updating and upgrading Homebrew..."; echo;
yes | brew update
yes | brew upgrade

# Remove outdated versions from the cellar
brew cleanup