# dotfiles

Personal configuration files for development environment.

## Contents

- **Tmux** - Terminal multiplexer configuration
- **Neovim** - Using AstroNvim distribution (configuration managed by AstroNvim)

## Installation

```bash
# Clone repository
git clone https://github.com/asrijanga/dotfiles.git ~/dotfiles

# Create symlinks
ln -s ~/dotfiles/.config/tmux ~/.config/tmux
# Neovim configuration is now managed by AstroNvim distribution

# For AstroNvim setup:
# 1. Install AstroNvim from https://github.com/AstroNvim/AstroNvim
# 2. Follow AstroNvim installation instructions

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


