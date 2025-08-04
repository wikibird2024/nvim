
return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("user.plugins.lsp.capabilities")
      local on_attach = require("user.plugins.lsp.on_attach")

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      })

      -- Thêm các LSP server khác nếu muốn
    end,
  },
}
