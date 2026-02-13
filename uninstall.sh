#!/bin/bash

## Désinstalle les paquets listés dans un Brewfile
uninstall_brewfile() {
  local brewfile="$1"
  if [[ ! -f "$brewfile" ]]; then
    echo "Fichier introuvable : $brewfile"
    return 1
  fi

  echo "Désinstallation des paquets de $brewfile..."

  while IFS= read -r line; do
    if [[ "$line" =~ ^brew\ \"([^\"]+)\" ]]; then
      brew list "${BASH_REMATCH[1]}" &>/dev/null && brew uninstall "${BASH_REMATCH[1]}"
    elif [[ "$line" =~ ^cask\ \"([^\"]+)\" ]]; then
      brew list --cask "${BASH_REMATCH[1]}" &>/dev/null && brew uninstall --cask "${BASH_REMATCH[1]}"
    elif [[ "$line" =~ ^mas\ \"([^\"]+)\",\ id:\ ([0-9]+) ]]; then
      local app_name="${BASH_REMATCH[1]}"
      if [[ -d "/Applications/${app_name}.app" ]]; then
        open -a "AppCleaner" "/Applications/${app_name}.app"
        read -rp "Appuyer sur Entrée une fois ${app_name} supprimé dans AppCleaner..." < /dev/tty
      fi
    fi
  done < "$brewfile"
}

## Désinstallation des catégories optionnelles
for arg in "$@"; do
  case "$arg" in
    --games)
      uninstall_brewfile Brewfile.games
      ;;
    --entertainment)
      uninstall_brewfile Brewfile.entertainment
      ;;
    --photography)
      uninstall_brewfile Brewfile.photography
      ;;
    --all)
      uninstall_brewfile Brewfile.games
      uninstall_brewfile Brewfile.entertainment
      uninstall_brewfile Brewfile.photography
      ;;
  esac
done
