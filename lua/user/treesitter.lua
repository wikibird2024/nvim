
require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "cpp", "python" },
  highlight = { enable = true },
  indent = { enable = true },
})
