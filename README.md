

---

```markdown
# ⚙️ Ginko's Neovim Configuration

A fast, modular, and professional Neovim setup built in **Lua**, using [`lazy.nvim`](https://github.com/folke/lazy.nvim) for plugin management.

Ideal for:
- Embedded systems & C development (ESP-IDF)
- Python development
- LaTeX writing
- Advanced LSP, DAP, and CLI workflows

---

## ✨ Features

- 🧠 **LSP & Autocomplete** – `nvim-lspconfig`, `nvim-cmp`, `LuaSnip`
- 🔍 **Fuzzy Finder** – `Telescope`
- 🌳 **Syntax Highlighting** – `nvim-treesitter`
- 🧪 **Debugging** – `nvim-dap`
- 💡 **Code Actions** – Keymapped via `<leader>l`
- 📁 **File Tree** – `nvim-tree`
- 🎨 **UI Enhancements** – `gruvbox`, `lualine`, `bufferline`
- ⚙️ **Toggleterm** – integrated with ESP-IDF (build, flash, monitor)
- 📝 **LaTeX Support** – `vimtex` with Zathura and `latexmk`
- 🔧 **Autoformatters** – `conform.nvim` or external tools
- 🧩 **Which-Key** – discoverable custom keybindings
- 🔌 **Lazy Plugin Loader** – performant, on-demand plugin setup

---

## 📁 Structure

```

.
├── init.lua                      -- Entry point
├── lazy-lock.json               -- Plugin lockfile
├── README.md
└── lua
└── user
├── keymaps.lua          -- All <leader> mappings
├── options.lua          -- General Neovim settings
├── plugins              -- Plugin specs by category
│   ├── init.lua        -- Plugin loader using lazy.nvim
│   ├── ui.lua          -- Themes, statusline, bufferline, tree
│   ├── lsp.lua         -- LSP + autocomplete plugins
│   ├── tools.lua       -- Treesitter, telescope, terminal, dap
│   ├── git.lua         -- Gitsigns and related
│   └── latex.lua       -- VimTeX for LaTeX support
├── colorscheme.lua      -- Gruvbox config
├── lualine.lua
├── bufferline.lua
├── nvimtree.lua
├── telescope.lua
├── treesitter.lua
├── lsp.lua
├── cmp.lua
├── dap.lua
├── terminal.lua
├── formatter.lua
├── git.lua
└── latex.lua

````

---

## 🔑 Keymaps (leader = `<space>`)

| Keybinding       | Action                       |
|------------------|------------------------------|
| `<leader>ff`     | Find files (Telescope)       |
| `<leader>fg`     | Grep files (live_grep)       |
| `<leader>tt`     | Toggle terminal              |
| `<leader>ib`     | ESP-IDF: Build               |
| `<leader>if`     | ESP-IDF: Flash               |
| `<leader>im`     | ESP-IDF: Monitor             |
| `<leader>ld`     | Go to definition             |
| `<leader>lr`     | Rename symbol                |
| `<leader>cc`     | Toggle comment               |
| `<leader>i`      | Reindent entire file         |

... and many more. See `keymaps.lua` for full list.

---

## 📦 Plugin Management

Powered by [`lazy.nvim`](https://github.com/folke/lazy.nvim)

To update plugins:
```bash
:Lazy update
````

To install new ones:

```bash
:Lazy
```

---

## 🧪 LaTeX Setup

Ensure the following tools are installed:

* `latexmk`
* `zathura`

Open any `.tex` file and use:

* `\ll` – Compile
* `\lv` – View PDF
* `\lk` – Stop compilation

---

## 💡 Tips

* Set `mapleader = " "` at the top of your config for ergonomic mappings
* Modularize plugin config for easy debugging and portability
* Use `ToggleTerm` for integrated CLI workflows (like ESP-IDF)

---

## ✅ TODO

* [ ] Add Linting (`mason.nvim` or `null-ls`)
* [ ] Extend project/session management
* [ ] Add unit testing integration

---

> Designed by Ginko – built for productivity, clarity, and embedded power.

```
