
return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspconfig = require("lspconfig")
      local on_attach = require("user.config.lsp_on_attach").on_attach
      local capabilities = require("user.config.lsp_capabilities")

      require("user.plugins.lsp.servers.pyright").setup(lspconfig, on_attach, capabilities)
      require("user.plugins.lsp.servers.clangd").setup(lspconfig, on_attach, capabilities)
    end,
  },
  { "williamboman/mason.nvim", build = ":MasonUpdate", config = true },
  { "williamboman/mason-lspconfig.nvim", config = true },
}
