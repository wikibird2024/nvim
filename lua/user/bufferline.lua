
local ok, bufferline = pcall(require, "bufferline")
if not ok then
  vim.notify("bufferline not found")
  return
end

bufferline.setup({
  options = {
    mode = "buffers",
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = false,
    show_close_icon = false,
    separator_style = "slant",
  },
})
