
-- user/plugins/lsp/servers/clangd.lua

local M = {}

function M.setup(lspconfig, on_attach, capabilities)
  lspconfig.clangd.setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

return M
