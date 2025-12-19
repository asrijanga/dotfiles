# Agent Guidelines for Dotfiles Repository

## Build/Lint/Test Commands

### Neovim Configuration (AstroNvim v5+)
- **Format**: `stylua .config/nvim/` (run from repo root)
- **Lint**: `selene .config/nvim/` (run from repo root)
- **Check config**: Open `nvim` - AstroNvim will auto-validate and install plugins
- **Test change**: `nvim +checkhealth` to verify LSP, treesitter, etc.

### Shell Configuration (Oh-My-Zsh)
- **Syntax check**: `zsh -n .zshrc`
- **Test loading**: `zsh -i -c exit` (exit code 0 = success)
- **Reload**: `source ~/.zshrc` after changes

### Tmux Configuration
- **Syntax check**: `tmux -f .config/tmux/tmux.conf source-file .config/tmux/tmux.conf`
- **Reload live**: `tmux source-file ~/.config/tmux/tmux.conf` (or prefix + r)

## Code Style Guidelines

### Lua (Neovim - AstroNvim)
- **Framework**: AstroNvim v5 with lazy.nvim plugin management
- **Indentation**: 2 spaces, 120 char line width (defined in .stylua.toml)
- **Quotes**: Double quotes preferred (`quote_style = "AutoPreferDouble"`)
- **Formatting**: Use stylua with collapse_simple_statement enabled
- **Plugin specs**: Return lazy.nvim `LazySpec` tables from files in `lua/plugins/`
- **Types**: Add `---@type LazySpec` or `---@type AstroCoreOpts` annotations
- **Imports**: `require("module")` for Lua modules, lazy.nvim spec tables for plugins
- **Naming**: snake_case for variables/functions, PascalCase for module names
- **Structure**: Plugins auto-import from `lua/plugins/*.lua`, community packs from `lua/community.lua`

### Shell (Zsh with Oh-My-Zsh)
- **Theme**: robbyrussell (can use p10k if configured)
- **Indentation**: 2 spaces, standard POSIX-compliant shell scripting
- **Quotes**: Double quotes for variable expansion, single for literals
- **Functions**: Use `function_name() { }` format
- **Exports/Aliases**: Group logically, place after oh-my-zsh source
- **PATH modifications**: Append with `export PATH="$HOME/.local/bin:$PATH"`

### Tmux Configuration
- **Prefix**: Backtick (\`) instead of default Ctrl+b
- **Indexing**: Windows and panes start at 1, not 0
- **Plugin manager**: TPM (Tmux Plugin Manager) at `~/.tmux/plugins/tpm`
- **Plugins**: tmux-sensible, tmux-resurrect, catppuccin theme (latte flavor)
- **Splits**: `\` for horizontal, `-` for vertical
- **Reload binding**: prefix + r sources config from ~/dotfiles/.config/tmux/tmux.conf

## Repository Structure & Conventions

### File Organization
- **Config location**: All configs in `.config/` subdirectories (nvim, tmux)
- **Symlinks**: `~/.config/nvim` → `~/dotfiles/.config/nvim`, same for tmux
- **Lock files**: Track `lazy-lock.json` for reproducible nvim plugin versions
- **Ignored**: Tmux plugins dir (`.config/tmux/plugins/`), system files (.DS_Store)

### Making Changes
- **Neovim plugins**: Edit files in `lua/plugins/`, remove guard `if true then return {} end` to activate
- **LSP/Tools**: Add to `mason-tool-installer` in `lua/plugins/mason.lua`
- **Shell aliases**: Add to bottom of `.zshrc` after oh-my-zsh source line
- **Minimalism**: Remove unused configs immediately, keep lean and focused
- **Documentation**: Update README.md only for significant structural changes

## Error Handling & Safety
- **Lua**: Use `pcall(require, "module")` for optional dependencies
- **Shell**: Check command existence with `command -v foo >/dev/null 2>&1` before use
- **Config validation**: Test configs in isolation before committing
- **Dependencies**: Gracefully handle missing tools (Nerd Fonts, ripgrep, etc.)
- **Backup**: Keep `.bak` files when making destructive changes to configs