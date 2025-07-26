-- lua/user/colorscheme.lua

local M = {}

function M.setup()
  -- đảm bảo truecolor
  vim.opt.termguicolors = true
  vim.opt.background = "dark"

  -- Gruvbox cấu hình
  require("gruvbox").setup({
    terminal_colors    = true,
    contrast           = "hard",  -- "soft", "medium", "hard"
    transparent_mode   = false,
  })

  -- Áp dụng colorscheme
  local ok, _ = pcall(vim.cmd, "colorscheme gruvbox")
  if not ok then
    vim.notify("Không thể load colorscheme gruvbox!", vim.log.levels.ERROR)
  end
end

-- Tự động chạy
M.setup()

return M

