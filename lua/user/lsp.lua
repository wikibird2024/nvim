
local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
  cmd = { "clangd", "--background-index", "--suggest-missing-includes" },
  filetypes = { "c", "cpp" },
  root_dir = function(fname)
    return require("lspconfig").util.root_pattern("compile_commands.json", "CMakeLists.txt")(fname)
      or vim.fn.getcwd()
  end,
})

lspconfig.pylsp.setup({})
