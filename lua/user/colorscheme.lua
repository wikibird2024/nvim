
-- lua/user/colorscheme.lua

vim.opt.termguicolors = true

require("gruvbox").setup({
  terminal_colors = true,
  contrast = "hard",        -- can be "soft", "medium", or "hard"
  transparent_mode = false,
})

vim.cmd.colorscheme("gruvbox")
