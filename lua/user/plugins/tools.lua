
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("user.treesitter")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("user.telescope")
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
}
