
return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        lazy = false,
        config = function()
            require("user.colorscheme")
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
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("user.nvimtree")
        end,
    },
}
