# NvimRC
My customized and overengineered Neovim configuration.
# Instlalation
**This configuration is only verified to work on Linux**
To get started, run the following command:
```sh
git clone https://github.com/nautrw/nvimrc ~/.config/nvim && nvim
```
**ASP.NET is required for *CSharpier* (C# formatter)**
On Arch Linux:
```sh
sudo pacman -S aspnet-runtime-10.0
```
# Features
- Custom keybinds for certain languages (Python, Markdown)
- Full LSP, Linting, and Formatting support for certain languages (Bash, Python, C#)
- Custom colorscheme picker with persistence and the ability to ignore colorschemes
- WhichKey and keybind search feature (`<leader>sk`), ergonomic keybinds for faster development
- Oil file explorer and manager
# Technologies Used
- [Lazy.nvim](https://github.com/folke/lazy.nvim): Package Manager
- [Oil](https://github.com/stevearc/oil.nvim): File Explorer
- [Snacks](https://github.com/folke/snacks.nvim): Dashboard, pickers, notifications, smooth scrolling, indentation lines, etc.
- [GrugFar](https://github.com/MagicDuck/grug-far.nvim): Global search and replace
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim): Git integration and status
- [Lualine](https://nvim-lualine/lualine.nvim): Statusline
- [Conform](https://stevearc/conform.nvim): Formatting support
- [Mason](https://github.com/mason-org/mason.nvim): LSP, linter, and formatter installer
  - [Mason-Tool-Installer](https://github.com/WhoIsSethDaniel/mason-tool-installer): Automatic ainstallation
- [Nvim-Lint](https://github.com/mfussenegger/nvim-lint): Linting support
- [Nvim-Lspconfig](https://github.com/neovim/nvim-lspconfig): LSP support
