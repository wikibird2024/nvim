
-- indentline.lua
return {
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    config = function()
      require("ibl").setup {
        indent = { char = "│" },
      }
    end,
  },
}
