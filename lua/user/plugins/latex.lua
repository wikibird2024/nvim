
return {
  -- VimTeX – Core LaTeX plugin for Neovim
  {
    "lervag/vimtex",
    ft = { "tex", "latex", "bib" },
    config = function()
      -- PDF viewer (sync with source)
      vim.g.vimtex_view_method = "zathura"

      -- Compiler configuration (uses latexmk)
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        build_dir = "build",
        options = {
          "-pdf",
          "-shell-escape",
          "-verbose",
          "-file-line-error",
          "-synctex=1",
          "-interaction=nonstopmode",
          "-output-directory=build", -- Output to 'build' folder
        },
      }

      -- Additional VimTeX options
      vim.g.vimtex_quickfix_mode = 1         -- Enable quickfix window for error navigation
      vim.g.vimtex_syntax_enabled = 1        -- Enable syntax highlighting
      vim.g.vimtex_complete_enabled = 1      -- Enable completion support
    end,
  },

  -- texlab – Native LSP server for LaTeX (via nvim-lspconfig)
  {
    "neovim/nvim-lspconfig",
    ft = { "tex", "latex", "bib" },
    config = function()
      local lspconfig = require("lspconfig")

      -- Try to load shared LSP capabilities/on_attach from user config
      local ok_cap, capabilities = pcall(require, "user.plugins.lsp.capabilities")
      local ok_attach, on_attach = pcall(require, "user.plugins.lsp.on_attach")
      if not ok_cap then capabilities = {} end
      if not ok_attach then on_attach = nil end

      -- Configure texlab server
      lspconfig.texlab.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          texlab = {
            build = {
              executable = "latexmk",
              args = {
                "-pdf",
                "-interaction=nonstopmode",
                "-synctex=1",
                "-output-directory=build", -- Must match VimTeX build dir
                "%f",
              },
              onSave = true, -- Build on save
            },
            forwardSearch = {
              executable = "zathura",
              args = { "--synctex-forward", "%l:1:%f", "%p" },
            },
          },
        },
      })
    end,
  },

  -- LuaSnip LaTeX snippets – Snippet engine integration
  {
    "iurimateus/luasnip-latex-snippets.nvim",
    dependencies = { "L3MON4D3/LuaSnip" },
    ft = { "tex", "latex" },
    config = function()
      require("luasnip-latex-snippets").setup() -- Auto-load default snippets
    end,
  },
}
