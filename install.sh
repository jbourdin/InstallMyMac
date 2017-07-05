#

## Assure la présence de git
git --version;

## installation de brew
command -v brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

## ajout du tap pour Cask
(brew tap | grep caskroom/cask) || brew tap caskroom/cask
(brew tap | grep Homebrew/bundle) || brew tap Homebrew/bundle
## Ajout des App du store
(brew ls | grep mas ) || brew install mas

brew bundle

