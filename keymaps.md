
Here is the **content of your `keymaps.md` file**:

---

# 🧠 Neovim Keymap Reference

This document provides an organized overview of custom keybindings in your Neovim configuration using `<leader>` as the main prefix (`<Space>`).

---

## 🔑 Leader Key

```lua
vim.g.mapleader = " "
````

All shortcuts below use `<leader>` (Space) as the prefix.

---

## 📁 File / Find / Format (`<leader>f`)

| Key          | Description                     |
| ------------ | ------------------------------- |
| `<leader>ff` | Find files via Telescope        |
| `<leader>fg` | Live grep search via Telescope  |
| `<leader>f`  | Format current buffer using LSP |

---

## 🔧 Git (`<leader>g`)

| Key          | Description                       |
| ------------ | --------------------------------- |
| `<leader>gs` | Stage current Git hunk (Gitsigns) |
| `<leader>gb` | Git blame current line            |

---

## 📄 Buffer Management (`<leader>b`)

| Key          | Description           |
| ------------ | --------------------- |
| `<leader>bd` | Delete current buffer |
| `<leader>bn` | Go to next buffer     |
| `<leader>bp` | Go to previous buffer |

---

## 🪟 Window Management (`<leader>w`)

| Key          | Description          |
| ------------ | -------------------- |
| `<leader>ws` | Horizontal split     |
| `<leader>wv` | Vertical split       |
| `<leader>wc` | Close current window |

---

## 💡 LSP – Language Features (`<leader>l`)

| Key          | Description                   |
| ------------ | ----------------------------- |
| `<leader>ld` | Go to definition              |
| `<leader>lr` | Rename symbol                 |
| `<leader>lh` | Hover (show info)             |
| `<leader>la` | Code actions (e.g. quick fix) |

---

## 🐞 Debug (DAP) (`<leader>d`)

| Key          | Description        |
| ------------ | ------------------ |
| `<leader>db` | Toggle breakpoint  |
| `<leader>dc` | Continue execution |
| `<leader>do` | Step over          |
| `<leader>di` | Step into          |

---

## 🖥️ Terminal / Tools (`<leader>t`)

| Key          | Description                   |
| ------------ | ----------------------------- |
| `<leader>tt` | Toggle floating terminal      |
| `<leader>tn` | Toggle NvimTree file explorer |

---

## 📦 ESP-IDF Integration (`<leader>i`)

| Key          | Description               |
| ------------ | ------------------------- |
| `<leader>ib` | Build project with idf.py |
| `<leader>if` | Flash firmware via idf.py |
| `<leader>im` | Start monitor via idf.py  |

---

## 🔌 Plugin Management (`<leader>p`)

| Key          | Description              |
| ------------ | ------------------------ |
| `<leader>ps` | Open Lazy plugin manager |
| `<leader>pi` | Lazy install             |
| `<leader>pu` | Lazy update              |

---

## 🧩 Code Tools & Comments (`<leader>c`)

| Key          | Description               |
| ------------ | ------------------------- |
| `<leader>cc` | Toggle comment (linewise) |
| `<leader>ca` | Run code action (LSP)     |

---

## 🔍 Search / Session / Symbol (`<leader>s`)

| Key          | Description                         |
| ------------ | ----------------------------------- |
| `<leader>ss` | Search document symbols (Telescope) |
| `<leader>sr` | Resume last Telescope search        |
| `<leader>sh` | Help tags                           |

---

> Maintained by [@wikibird2024](https://github.com/wikibird2024)


---
