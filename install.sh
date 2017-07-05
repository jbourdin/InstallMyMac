#

## Assure la présence de git
git --version;

## installation de brew
command -v brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

## ajout du tap pour Cask
(Brew tap | grep caskroom/cask) || brew tap caskroom/cask

## ajout des logiciels

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

(brew cask list | grep macupdate-desktop) || brew cask install macupdate-desktop

(brew cask list | grep onyx) || brew cask install onyx

(brew cask list | grep skype) || brew cask install skype

(brew cask list | grep yujitach-menumeters) || brew cask install yujitach-menumeters

(brew cask list | grep tunnelblick) || brew cask install tunnelblick

(brew cask list | grep vlc) || brew cask install vlc

(brew cask list | grep suspicious-package) || brew cask install suspicious-package

(brew cask list | grep postman) || brew cask install postman

## Ajout de php
(brew tap | grep homebrew/homebrew-php) || brew tap homebrew/homebrew-php

(brew ls | grep htop ) || brew install htop
(brew ls | grep wget ) || brew install wget
(brew ls | grep curl ) || brew install curl
(brew ls | grep awscli ) || brew install awscli
(brew ls | grep php56 ) || brew install php56
(brew ls | grep php56-intl ) || brew install php56-intl
(brew ls | grep php56-mcrypt ) || brew install php56-mcrypt
(brew ls | grep composer ) || brew install composer
(brew ls | grep git-lfs ) || brew install git-lfs
(brew ls | grep percona-toolkit ) || brew install percona-toolkit

## Ajout des App du store
(brew ls | grep mas ) || brew install mas

