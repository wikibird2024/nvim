
vim.g.tokyonight_style = "night"
vim.cmd("colorscheme tokyonight")

require("lualine").setup({
  options = {
    theme = "tokyonight",
    section_separators = '',
    component_separators = '|',
  },
  sections = {
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename' },
  }
})
