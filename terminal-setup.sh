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

echo "Installing Iterm2"
brew cask install iterm2

open -a iTerm
exit