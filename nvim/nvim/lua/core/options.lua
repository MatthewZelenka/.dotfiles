--#region line numbering
vim.opt.nu = true -- line numbers
vim.opt.relativenumber = true -- relative line numbers
--#endregion

--#region line indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
--#endregion

--#region visual
vim.opt.wrap = false

vim.opt.hlsearch = false -- highlight seach matches
vim.opt.incsearch = true -- show matches incrementally as you type the search

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
--#endregion
