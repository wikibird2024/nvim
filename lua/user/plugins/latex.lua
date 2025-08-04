-- user/plugins/latex.lua
return {
  -- VimTeX - Plugin chính cho LaTeX
  {
    "lervag/vimtex",
    ft = { "tex", "latex", "bib" },
    config = function()
      -- PDF viewer (chọn một trong các options dưới)
      vim.g.vimtex_view_method = "zathura"     -- Linux
      -- vim.g.vimtex_view_method = "skim"     -- macOS  
      -- vim.g.vimtex_view_method = "sumatrapdf" -- Windows
      
      -- Compiler
      vim.g.vimtex_compiler_method = "latexmk"
      
      -- Compiler options
      vim.g.vimtex_compiler_latexmk = {
        build_dir = "build",
        options = {
          "-pdf",
          "-shell-escape",
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
        },
      }
      
      -- Disable some features for better performance
      vim.g.vimtex_compiler_progname = "nvr"
      vim.g.vimtex_complete_enabled = 1
      vim.g.vimtex_syntax_enabled = 1
      
      -- QuickFix settings
      vim.g.vimtex_quickfix_mode = 0
      
      -- Folding
      vim.g.vimtex_fold_enabled = 1
    end,
  },
  
  -- LSP cho LaTeX
  {
    "neovim/nvim-lspconfig",
    ft = { "tex", "latex", "bib" },
    config = function()
      local lspconfig = require("lspconfig")
      
      -- Kiểm tra xem có capabilities và on_attach không
      local ok_cap, capabilities = pcall(require, "user.plugins.lsp.capabilities")
      local ok_attach, on_attach = pcall(require, "user.plugins.lsp.on_attach")
      
      if not ok_cap then capabilities = {} end
      if not ok_attach then on_attach = nil end
      
      -- Setup TeXLab LSP server
      lspconfig.texlab.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          texlab = {
            build = {
              executable = "latexmk",
              args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
              onSave = true,
            },
            forwardSearch = {
              executable = "zathura",  -- thay đổi theo PDF viewer
              args = { "--synctex-forward", "%l:1:%f", "%p" },
            },
          },
        },
      })
    end,
  },
  
  -- Snippet support cho LaTeX (tùy chọn)
  {
    "iurimateus/luasnip-latex-snippets.nvim",
    dependencies = { "L3MON4D3/LuaSnip" },
    ft = { "tex", "latex" },
    config = function()
      require("luasnip-latex-snippets").setup()
    end,
  },
}
