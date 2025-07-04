
local dap = require("dap")

dap.adapters.gdb = {
  type = 'executable',
  command = 'xtensa-esp32-elf-gdb',
  args = { "-i", "dap" },
}

dap.configurations.c = {
  {
    name = "Debug ESP32",
    type = "gdb",
    request = "attach",
    program = function()
      return vim.fn.input('Path to ELF: ', vim.fn.getcwd() .. '/build/my_project.elf', 'file')
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = true,
  },
}
