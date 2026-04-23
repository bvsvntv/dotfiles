#!/bin/bash

set -e

echo "> begin dotfiles setup..."

# Homebrew
if ! command -v brew &>/dev/null; then
    echo "> installing homebrew..."
    /bin/bash -c "$(curl -fsSl https://raw.githubusercontent.com/homebrew/install/head/install.sh)"
else
    echo "[ ok ] homebrew already installed. skipping..."
fi

# Initial brew operations
brew analytics off
brew update

echo "> installing formulae..."
brew install git stow neovim tmux jq btop
echo "[ ok ] formulae installation complete..."

echo "> installing casks..."
brew install --cask font-jetbrains-mono-nerd-font aerospace ghostty brave-browser dbeaver-community docker-desktop
echo "[ ok ] casks installation complete..."

# Dotfiles
if [[ ! -d "$HOME/dotfiles" ]]; then
    echo "> cloning dotfiles repository..."
    git clone -b main https://github.com/bvsvntv/dotfiles "$HOME/dotfiles"
else
    echo "[ ok ] dotfiles repository already cloned, pulling latest..."
    cd "$HOME/dotfiles" || exit 1
    git pull
fi

# Link dotfiles
echo "> stowing dotfiles..."
cd $HOME/dotfiles || exit 1
stow .

echo "[ ok ] dotfiles setup complete..."
