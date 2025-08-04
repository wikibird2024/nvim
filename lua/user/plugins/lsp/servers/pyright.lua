
-- user/plugins/lsp/servers/pyright.lua

local M = {}

function M.setup(lspconfig, on_attach, capabilities)
  lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

return M
