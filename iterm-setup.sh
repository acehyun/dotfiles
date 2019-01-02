echo "Installing 1Password"
brew cask install 1password

echo "Installing Git"
brew install git

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

echo "Installing Spectacle"
brew cask install spectacle

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash

echo "Installing node"
nvm install stable

echo "Installing Yarn"
brew install yarn --without-node

echo "Installing rvm, ruby, rails, bundler"
curl -L https://get.rvm.io | bash -s stable —ruby --rails --autolibs=enable

cat >> ~/.zshrc << E0F
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

export PATH="$HOME/.yarn/bin:$PATH" # For yarn
E0F

source ~/.zshrc
