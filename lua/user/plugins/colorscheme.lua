
-- user/plugins/colorscheme.lua
return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,         -- Load sớm
    lazy = false,            -- Không lazy load theme
    config = function()
      vim.cmd.colorscheme("gruvbox")
      require("gruvbox").setup({
        contrast = "hard",
        overrides = {},
      })
    end,
  },
}
