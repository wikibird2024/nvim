
-- ╭────────────────────────────────────────────╮
-- │ NVIM-TREE CONFIGURATION                    │
-- ╰────────────────────────────────────────────╯
local ok, nvimtree = pcall(require, "nvim-tree")
if not ok then
  vim.notify("nvim-tree not found", vim.log.levels.ERROR)
  return
end

nvimtree.setup({
  view = {
    width = 30,
    side = "left",
    relativenumber = true,
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
  filters = {
    dotfiles = false,
  },
  git = {
    enable = true,
    ignore = false,
  },
  actions = {
    open_file = {
      quit_on_open = false,
    },
  },
})
