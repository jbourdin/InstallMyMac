#

## Assure la présence de git
git --version;

## installation de brew
command -v brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

## ajout du tap pour Cask
##brew tap caskroom/cask

(brew cask list | grep google-chrome) || brew cask install google-chrome

(brew cask list | grep github-desktop) || brew cask install github-desktop

(brew cask list | grep slack) || brew cask install slack

(brew cask list | grep phpstorm) || brew cask install phpstorm

(brew cask list | grep sequel-pro) || brew cask install sequel-pro

(brew cask list | grep sublime-text) || brew cask install sublime-text

(brew cask list | grep omnifocus) || brew cask install omnifocus

(brew cask list | grep dropbox) || brew cask install dropbox

(brew cask list | grep calibre) || brew cask install calibre

(brew cask list | grep cyberduck) || brew cask install cyberduck

(brew cask list | grep docker) || brew cask install docker

(brew cask list | grep firefox) || brew cask install firefox

(brew cask list | grep lastpass) || brew cask install lastpass 




