-- File: lua/user/lualine.lua

-- Kiểm tra module lualine đã cài chưa
local ok, lualine = pcall(require, "lualine")
if not ok then
  vim.notify("lualine not found", vim.log.levels.WARN)
  return
end

-- Lấy tên theme từ colorscheme hiện tại
local current_theme = vim.g.colors_name or "auto"
local theme_ok = pcall(require, "lualine.themes." .. current_theme)

lualine.setup({
  options = {
    theme = theme_ok and current_theme or "auto",
    component_separators = '|',
    section_separators = '',
    globalstatus = true, -- thêm dòng trạng thái dùng chung
  },
})

