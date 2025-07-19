# Neovim Configuration by Dennis Lemm

> Personal development environment optimized for web development with React, TypeScript, Astro, and more.

## Features

- 🚀 **Fast startup** with [lazy.nvim](https://github.com/folke/lazy.nvim) plugin management
- 🎨 **Tokyo Night theme** (matching my [portfolio](https://lemm.dev))
- 📝 **Web development ready** - TypeScript, React, Astro, CSS, Markdown support
- ⚡ **Custom keybindings** for maximum productivity
- 🔍 **Fuzzy finding** with Telescope and FZF
- 🌳 **Git integration** with Gitsigns, Fugitive, and LazyGit
- 📊 **Beautiful statusline** with Lualine (Tokyo Night theme)
- 🎯 **LSP configured** for modern web development with Mason
- 🎨 **Multiple colorschemes** - Tokyo Night, One Dark
- 📝 **Enhanced editing** with autopairs, comments, and text objects
- 🔧 **Code formatting** with Conform and Prettier support

## Prerequisites

- **Neovim** >= 0.9.0
- **Git** for cloning and plugin management
- **Node.js** >= 16 (for LSP servers and formatters)
- **A Nerd Font** (I recommend [Lekton Nerd Font](https://github.com/ryanoasis/nerd-fonts))
- **ripgrep** for fast text searching
- **fd** for fast file finding (optional but recommended)

## Installation

### 1. Backup existing configuration

```bash
# Backup your current config (if any)
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
mv ~/.local/state/nvim ~/.local/state/nvim.backup
mv ~/.cache/nvim ~/.cache/nvim.backup
```

### 2. Clone this configuration

```bash
git clone https://github.com/dlemm/nvim-config.git ~/.config/nvim
```

### 3. Start Neovim

```bash
nvim
```

On first startup, **lazy.nvim** will automatically:

- Install itself
- Download and install all configured plugins
- Set up LSP servers via Mason
- Configure formatters and linters

This may take a few minutes on the first run. Be patient! ☕

### 4. Install additional tools

Most tools will be installed automatically, but you can manually manage them:

```vim
:Mason
:Lazy
:checkhealth
```

## Key Features After Installation

### Navigation

- **Leader key**: `<Space>`
- **File explorer**: `<leader>ee` (nvim-tree)
- **Fuzzy finder**: `<leader>ff` (files)

### Git Integration

- **Git status**: `<leader>lg` (LazyGit)

### LSP Actions

- **Go to definition**: `<leader>gd`

## Project Structure

The configuration is modular and organized as follows:

```
~/.config/nvim/
├── init.lua                    # Entry point
├── lazy-lock.json             # Plugin version lock file
├── lua/
│   ├── 314rate/              # Custom namespace
│   │   └── core/             # Core configuration
│   │       ├── init.lua      # Core initialization
│   │       ├── keymaps.lua   # Global keymaps
│   │       └── options.lua   # Neovim options
│   └── plugins/              # Plugin configurations
│       ├── lsp/              # LSP related configs
│       │   ├── lsp-servers.lua
│       │   ├── lspconfig.lua
│       │   └── mason.lua
│       ├── autopairs.lua     # Auto-closing brackets
│       ├── blink.lua         # Completion engine
│       ├── cloak.lua         # Hide sensitive data
│       ├── colorize.lua      # Color highlighting
│       ├── comment.lua       # Smart commenting
│       ├── conform.lua       # Code formatting
│       ├── copilot.lua       # GitHub Copilot
│       ├── cssvarviewer.lua  # CSS variable viewer
│       ├── dressing.lua      # Better UI elements
│       ├── fugitive.lua      # Git integration
│       ├── fzf-lua.lua       # Fuzzy finder
│       ├── gitsigns.lua      # Git signs in gutter
│       ├── hardtime.lua      # Better vim habits
│       ├── indent-blankline.lua # Indentation guides
│       ├── init.lua          # Plugin manager setup
│       ├── kanagawa.lua      # Kanagawa colorscheme
│       ├── lazygit.lua       # Git GUI
│       ├── linting.lua       # Code linting
│       ├── lspsaga.lua       # Enhanced LSP UI
│       ├── lualine.lua       # Statusline
│       ├── luarocks.lua      # Lua package manager
│       ├── markdown-preview.lua # Markdown preview
│       ├── mdx.lua           # MDX support
│       ├── noice.lua         # Better notifications
│       ├── nvim-tree.lua     # File explorer
│       ├── obsidian.lua      # Obsidian integration
│       ├── onedark.lua       # One Dark colorscheme
│       ├── pencil.lua        # Better writing
│       ├── snacks.lua        # Utility functions
│       ├── substitute.lua    # Better substitution
│       ├── surround.lua      # Surround text objects
│       ├── todo-comments.lua # Todo highlighting
│       ├── toggleterm.lua    # Terminal management
│       ├── tokyonight.lua    # Tokyo Night theme
│       ├── treesitter.lua    # Syntax highlighting
│       ├── trouble.lua       # Diagnostics panel
│       ├── twilight.lua      # Focus mode
│       ├── undotree.lua      # Undo history
│       ├── vim-astro.lua     # Astro framework support
│       ├── vim-coach.lua     # Vim learning
│       ├── vim-maximizer.lua # Window maximizing
│       ├── vim-visual-multi.lua # Multiple cursors
│       ├── which-key.lua     # Keybinding help
│       └── zen-mode.lua      # Distraction-free writing
```

## Customization

Feel free to modify any settings to match your workflow:

- **Theme**: Multiple themes available in respective plugin files
- **Keybindings**: Modify `lua/314rate/core/keymaps.lua`
- **LSP settings**: Adjust files in `lua/plugins/lsp/`
- **Plugin list**: Edit individual plugin files or disable in `lua/plugins/init.lua`

## Main Plugins Used

### Core

- **lazy.nvim** - Fast and modern plugin manager
- **mason.nvim** - LSP server, formatter, and linter installer
- **nvim-treesitter** - Advanced syntax highlighting

### UI & Appearance

- **tokyo-night.nvim** - Beautiful colorscheme
- **lualine.nvim** - Customizable statusline
- **nvim-tree.lua** - File explorer
- **which-key.nvim** - Keybinding hints

### LSP & Completion

- **nvim-lspconfig** - LSP configuration
- **blink.cmp** - Fast completion engine
- **conform.nvim** - Code formatting
- **trouble.nvim** - Diagnostics panel

### Git Integration

- **gitsigns.nvim** - Git decorations
- **fugitive.vim** - Git commands
- **lazygit.nvim** - Terminal Git UI

### Development

- **telescope.nvim** & **fzf-lua** - Fuzzy finding
- **copilot.lua** - AI pair programming
- **todo-comments.nvim** - Todo highlighting
- **markdown-preview.nvim** - Live markdown preview

## Technologies Supported

This configuration is optimized for:

- **Frontend**: React, TypeScript, Next.js, Astro, Hugo, JavaScript, CSS/SCSS
- **Backend**: Node.js, Python
- **Tools**: Git, Bash, Docker
- **Markup**: Markdown, MDX, JSON, YAML
- **Documentation**: Obsidian notes integration

## Troubleshooting

### Font icons not displaying

Make sure you have a [Nerd Font](https://github.com/ryanoasis/nerd-fonts) installed and set as your terminal font.

### Formatter not working

```vim
# Check conform status
:ConformInfo

# Check available formatters
:Mason
```

## Contributing

This is my personal configuration, but feel free to:

- 🍴 Fork it for your own use
- 🐛 Report issues you encounter
- 💡 Suggest improvements via issues or PRs
- 📖 Share your customizations

## Inspiration

This configuration is inspired by:

- [LazyVim](https://github.com/LazyVim/LazyVim)
- [NvChad](https://github.com/NvChad/NvChad)
- [AstroNvim](https://github.com/AstroNvim/AstroNvim)
- My daily workflow as a web developer at JvM TECH

## License

MIT License - feel free to use and modify as you wish.

## Author

**Dennis Lemm**

- Portfolio: [lemm.dev](https://lemm.dev)
- GitHub: [@dlemm](https://github.com/dlemm)
- Currently building awesome web projects at JvM TECH

_Built with ❤️ and lots of ☕_
