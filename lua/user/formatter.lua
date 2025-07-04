
require("conform").setup({
  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = true,
  },
  formatters_by_ft = {
    python = { "black", "isort" },
    c = { "clang_format" },
    cpp = { "clang_format" },
  },
})
