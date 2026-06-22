-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = "unnamedplus"

vim.opt.swapfile = false -- Disables swap files entirely (risky if you crash)
-- OR --
vim.opt.shortmess:append("A") -- Ignores the "ATTENTION" message about swap files

-- auto complete!!
vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.opt.scrolloff = 8

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.number = true
