
-- ~/.config/nvim/lua/user/plugins/git.lua

return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()
  end,
  event = { "BufReadPre", "BufNewFile" },
}
