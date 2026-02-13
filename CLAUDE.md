# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This repository is a macOS machine bootstrap/provisioning tool. It automates the setup of a new Mac by installing Homebrew, all packages/casks/Mac App Store apps via a `Brewfile`, and Oh My Zsh.

## Structure

- **`install.sh`** — Entry point script. Ensures git is available, installs Homebrew if missing, runs `brew bundle` for base packages, optionally installs category Brewfiles based on CLI flags, then installs Oh My Zsh.
- **`uninstall.sh`** — Uninstalls packages from optional category Brewfiles by parsing each entry and running the appropriate remove command.
- **`Brewfile`** — Core dev tools and utilities (always installed).
- **`Brewfile.games`** — Gaming apps (Discord, Steam, Epic Games, OpenEmu, etc.).
- **`Brewfile.entertainment`** — Media and creative apps (VLC, HandBrake, DaVinci Resolve, GarageBand, etc.).
- **`Brewfile.photography`** — Photography/publishing apps (Affinity Photo, Affinity Publisher).

## Commands

Run base provisioning only:
```sh
./install.sh
```

Run with optional categories:
```sh
./install.sh --games --entertainment --photography
```

Run with all categories:
```sh
./install.sh --all
```

Uninstall optional categories:
```sh
./uninstall.sh --games --entertainment --photography
```

Uninstall all optional categories:
```sh
./uninstall.sh --all
```

Install/update only Brewfile packages:
```sh
brew bundle
```

Dump current system packages to update the Brewfile:
```sh
brew bundle dump --force
```

Check what would be installed (dry run):
```sh
brew bundle check
```

## Brewfile Conventions

- The Brewfile is organized in sections: `tap`, `brew`, `cask`, `mas` (in that order).
- Comments in French are used in `install.sh` (the repo owner writes in French).
- Mac App Store entries use the format: `mas "App Name", id: <numeric_id>`.
