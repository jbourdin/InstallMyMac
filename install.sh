#!/bin/bash

## Assure la présence de git
git --version;

## Installation de brew
command -v brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Installation des paquets de base
brew bundle

## Installation des catégories optionnelles
for arg in "$@"; do
  case "$arg" in
    --games)
      brew bundle --file=Brewfile.games
      ;;
    --entertainment)
      brew bundle --file=Brewfile.entertainment
      ;;
    --photography)
      brew bundle --file=Brewfile.photography
      ;;
    --all)
      brew bundle --file=Brewfile.games
      brew bundle --file=Brewfile.entertainment
      brew bundle --file=Brewfile.photography
      ;;
  esac
done

## Installation de Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
