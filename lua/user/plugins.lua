-- ╭────────────────────────────────────────────╮
-- │ BOOTSTRAP lazy.nvim                        │
-- ╰────────────────────────────────────────────╯
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ╭────────────────────────────────────────────╮
-- │ PLUGIN LIST                                │
-- ╰────────────────────────────────────────────╯
require("lazy").setup({

  -- THEMES & UI
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        contrast = "hard", -- "soft", "medium", "hard"
        transparent_mode = false,
      })
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("gruvbox")
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("user.lualine")
    end,
  },

  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("user.bufferline")
    end,
  },

  -- FILE TREE & FINDER
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("user.nvimtree")
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("user.telescope")
    end,
  },

  -- GIT
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("user.git")
    end,
  },

  -- LSP & AUTOCOMPLETE
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("user.lsp")
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("user.cmp")
    end,
  },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- SYNTAX & TOOLS
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("user.treesitter")
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("user.terminal")
    end,
  },

  {
    "mfussenegger/nvim-dap",
    config = function()
      require("user.dap")
    end,
  },

  {
    "stevearc/conform.nvim",
    config = function()
      require("user.formatter")
    end,
  },

  -- KEYMAP HELPER
  {
    "folke/which-key.nvim",
    config = true,
  },
})

