# Dotfiles Management Guidelines

## Philosophy

**Keep it ultra clean and minimalistic.** Only track actively used configurations. Remove anything unused immediately.

## Core Principles

1. **Symlinks, not copies** - Config files in `~/.config/` symlink to `~/dotfiles/.config/`. Changes propagate automatically.

2. **Track what's active** - If you stop using a tool, remove its config from this repo.

3. **Lock files matter** - Include dependency lock files (e.g., plugin managers). Ensures identical environments across machines.

4. **Version control workflow** - Symlinks mean edits to configs automatically reflect in the repo. Just commit and push.

## Setup on New Machine

```bash
# Clone
git clone <repo-url> ~/dotfiles

# Symlink configs
ln -s ~/dotfiles/.config/<tool> ~/.config/<tool>

# Install dependencies as needed per tool
```

## Structure

```
dotfiles/
├── .config/          # Modern config location
│   ├── <editor>/     # Editor configuration
│   └── <tool>/       # Other tool configs
├── .<shell>rc        # Shell configuration
├── .gitignore
└── README.md
```

## What to Exclude

- System files (`.DS_Store`)
- Editor backups (`*.swp`, `*~`)
- Generated/cache files
- Sensitive data (tokens, keys)
- Unused configurations

## Maintenance

**Adding configs:**
1. Copy current config to `~/dotfiles/`
2. Remove original
3. Symlink back to dotfiles
4. Commit and push

**Removing configs:**
1. Delete from dotfiles repo immediately
2. Keep repo lean

**Updating configs:**
Symlinks mean changes happen in-place. Just commit when ready.

## Guidelines for AI Assistance

When working with this repo:
- Remove old/unused configs aggressively
- Use symlinks for all active configs
- Keep documentation concise, no fluff
- Focus on principles over specific implementations
- Update this file if core approach changes
