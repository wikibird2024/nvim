
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
-- │ LAZY SETUP - LOAD PLUGIN MODULES           │
-- ╰────────────────────────────────────────────╯
require("lazy").setup({
  { import = "user.plugins.ui" },
  { import = "user.plugins.lsp" },
  { import = "user.plugins.tools" },
  { import = "user.plugins.git" },
  { import = "user.plugins.latex" },
})
