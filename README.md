
# 🛠️ Neovim Configuration (by Ginko)

Modular, fast, and professional Neovim config using Lua and lazy.nvim.

## Features

- 🧠 LSP, Autocomplete (C/C++, Python, etc.)
- 🧱 Treesitter, Telescope, NvimTree
- 🧪 DAP Debugger
- ⚡ Toggleterm for ESP-IDF
- 🎨 Tokyonight theme
- 🔧 Formatter: black, clang-format

## Structure

.
├── lua
│   └── user
│       ├── telescope.lua
│       ├── colorscheme.lua
│       ├── treesitter.lua
│       ├── lsp.lua
│       ├── cmp.lua
│       ├── git.lua
│       ├── dap.lua
│       ├── terminal.lua
│       ├── formatter.lua
│       ├── options.lua
│       ├── keymaps.lua
│       ├── tes.py
│       ├── plugins.lua
│       ├── nvimtree.lua
│       ├── lualine.lua
│       └── bufferline.lua
├── init.lua
├── lazy-lock.json
└── README.md
