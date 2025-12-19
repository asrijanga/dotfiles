# dotfiles

Personal configuration files for development environment.

## Contents

- **Neovim** - AstroVim configuration with LSP, plugins, and keybindings
- **Tmux** - Terminal multiplexer configuration

## Installation

```bash
# Clone repository
git clone https://github.com/asrijanga/dotfiles.git ~/dotfiles

# Create symlinks
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/tmux ~/.config/tmux

# Install AstroVim plugins (open nvim, plugins will auto-install)
nvim
```

## Prerequisites

- Neovim >= 0.9
- Git
- A Nerd Font (for icons)
- Ripgrep (for telescope searching)

## Structure

```
dotfiles/
├── .config/
│   ├── nvim/          # AstroVim configuration
│   └── tmux/          # Tmux configuration
└── .gitconfig         # Git configuration
```

## Language Servers

LSP configurations are in `.config/nvim/lua/plugins/mason.lua`. Language servers will auto-install on first nvim launch.
