
-- ~/.config/nvim/lua/user/plugins/init.lua

return {
  -- Nhóm plugin rõ ràng
  { import = "user.plugins.cmp" },
  { import = "user.plugins.lsp" },
  { import = "user.plugins.tools" },
  { import = "user.plugins.ui" },

  -- Các plugin lẻ nằm ngoài nhóm (file đơn)
  { import = "user.plugins.colorscheme" },
  { import = "user.plugins.git" },
  { import = "user.plugins.latex" },
  { import = "user.plugins.terminal" },
  { import = "user.plugins.treesitter" },
}
