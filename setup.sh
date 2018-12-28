#!/bin/sh

echo "Installing Xcode"
xcode-select --install

echo "Installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Zsh"
brew install zsh

echo "Installing Oh my zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

echo "Setting to zsh"
chsh -s /usr/local/bin/zsh

echo "Installing Git"
brew install git

echo "Installing Iterm2"
brew cask install iterm2

echo "Installing visual studio code"
brew cask install visual-studio-code

echo "Installing slack"
brew cask install slack

echo "Installing sourcetree"
brew cask install sourcetree

echo "Installing chrome"
brew cask install google-chrome

echo "Installing dropbox"
brew cask install dropbox

echo "Installing alfred"
brew cask install alfred

echo "Installing 1Password"
brew cask install 1password

echo "Installing Spectacle"
brew cask install spectacle

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

echo "Installing Yarn"
brew install yarn --without-node

echo "Installing rvm, ruby, rails, bundler"
curl -L https://get.rvm.io | bash -s stable —ruby --rails --autolibs=enable

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
source $HOME/.rvm/scripts/rvm
