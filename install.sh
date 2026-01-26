#!/bin/bash

# Development Environment Setup Script
# This script installs essential development tools and dependencies

set -e  # Exit on any error

echo "🚀 Setting up development environment..."

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "🍺 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew already installed"
fi

# Update Homebrew
echo "🔄 Updating Homebrew..."
brew update

echo "📦 Installing essential development packages..."

# Install essential command-line tools
brew install tmux
brew install neovim
brew install ripgrep
brew install gh
brew install node

# Install fonts
brew install font-fira-code-nerd-font

# Install additional useful tools
brew install tree
brew install wget
brew install jq
brew install git-delta

echo "🔧 Installing additional development tools..."

# Install language servers and tools that are commonly used
brew install go
brew install python@3.11

# Install fzf for better fuzzy finding
brew install fzf

# Install bat for better cat
brew install bat

# Install exa for better ls
brew install exa

# Install zoxide for better cd
brew install zoxide

echo "✅ Development environment setup complete!"

echo "📝 Next steps:"
echo "1. Clone your dotfiles: git clone https://github.com/asrijanga/dotfiles.git ~/dotfiles"
echo "2. Set up symlinks for tmux: ln -s ~/dotfiles/.config/tmux ~/.config/tmux"
echo "3. Install AstroNvim separately from: https://github.com/AstroNvim/AstroNvim"
echo "4. For tmux, run: tmux source-file ~/.config/tmux/tmux.conf"