# dotfiles

Personal configuration files for development environment.

## Contents

- **Tmux** - Terminal multiplexer configuration
- **Neovim** - Using AstroNvim distribution (configuration managed by AstroNvim)

## Installation

```bash
# Clone repository
git clone https://github.com/asrijanga/dotfiles.git ~/dotfiles

# Run the install script to set up your development environment
./install.sh

# Create symlinks
ln -s ~/dotfiles/.config/tmux ~/.config/tmux
```

## Prerequisites

- Git
- A Nerd Font (for icons)
- Tmux >= 3.0

## Structure

```
dotfiles/
├── .config/
│   └── tmux/          # Tmux configuration
└── .gitconfig         # Git configuration
```

## Neovim Setup

Neovim is now managed by the AstroNvim distribution. Language servers and plugins are automatically managed by AstroNvim.

## Installation

To set up your development environment with all necessary tools, run:

```bash
./install.sh
```

This script will:
1. Install Homebrew if not already installed
2. Install essential development tools (tmux, neovim, ripgrep, etc.)
3. Install useful command-line utilities
4. Install development fonts

Manual steps after running the script:
1. Clone your dotfiles: git clone https://github.com/asrijanga/dotfiles.git ~/dotfiles
2. Set up symlinks for tmux: ln -s ~/dotfiles/.config/tmux ~/.config/tmux
3. Install AstroNvim separately from: https://github.com/AstroNvim/AstroNvim


