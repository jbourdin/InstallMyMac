# InstallMyMac

Bootstrap a fresh macOS machine with a single command. Installs Homebrew, dev tools, apps, and Oh My Zsh.

## Quick start

```sh
git clone <repo-url> && cd InstallMyMac
./install.sh
```

This installs the core set of packages defined in `Brewfile` (CLI tools, casks, Mac App Store apps) and sets up Oh My Zsh.

## Optional categories

Additional packages are split into category Brewfiles that can be installed on demand:

| Flag               | Brewfile                 | Contents                                        |
|--------------------|--------------------------|-------------------------------------------------|
| `--games`          | `Brewfile.games`         | Discord, Steam, Epic Games, OpenEmu, ...        |
| `--entertainment`  | `Brewfile.entertainment` | HandBrake, Calibre, DaVinci Resolve, ...        |
| `--photography`    | `Brewfile.photography`   | Affinity Photo, Affinity Publisher               |

```sh
# Install specific categories
./install.sh --games --photography

# Install everything
./install.sh --all
```

## Uninstalling optional categories

`uninstall.sh` parses category Brewfiles and removes each package:

- `brew` formulas and `cask` apps are removed via `brew uninstall`
- Mac App Store apps are opened in [AppCleaner](https://freemacsoft.net/appcleaner/) for a clean removal (the script waits for confirmation before continuing)

```sh
# Uninstall specific categories
./uninstall.sh --entertainment

# Uninstall all optional categories
./uninstall.sh --all
```

## Maintaining the Brewfile

```sh
# Check what would be installed
brew bundle check

# Update the Brewfile from currently installed packages
brew bundle dump --force
```

## Prerequisites

- macOS
- An Apple ID signed into the Mac App Store (for `mas` entries)
- [AppCleaner](https://freemacsoft.net/appcleaner/) is installed automatically as part of the base Brewfile
