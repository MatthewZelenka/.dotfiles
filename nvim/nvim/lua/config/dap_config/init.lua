local dap = require("dap")

-- Load per-language configs
require("config.dap_config.python")

-- Optional: shared UI setup
local dapui = require("dapui")
dapui.setup()

-- Keymaps for debugging
vim.keymap.set("n", "<F5>", dap.continue)
vim.keymap.set("n", "<F10>", dap.step_over)
vim.keymap.set("n", "<F11>", dap.step_into)
vim.keymap.set("n", "<F12>", dap.step_out)
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>B", function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)
vim.keymap.set('n', '<leader>lp', function()
  dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
end)
vim.keymap.set('n', '<leader>db', dap.clear_breakpoints)
vim.keymap.set("n", "<leader>dr", dap.repl.open)
vim.keymap.set("n", "<leader>dl", dap.run_last)
vim.keymap.set("n", "<Leader>dk", dap.terminate)
-- vim.keymap.set("n", "<Leader>dd", dap.disconnect)
