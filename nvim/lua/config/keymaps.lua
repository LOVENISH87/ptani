-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
--
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Normal mode: Select All
map("n", "<C-a>", "ggVG", opts)

-- Normal mode: Copy selection (yank)
map("n", "<C-c>", '"+y', opts)

-- Normal mode: Delete current line
--map("n", "<C-d>", "dd", opts)

-- Normal mode: Shift + Arrow to start selection
--map("n", "<S-Left>", "v<Left>", opts)
--map("n", "<S-Right>", "v<Right>", opts)
--map("n", "<S-Up>", "v<Up>", opts)
--map("n", "<S-Down>", "v<Down>", opts)

--M Visual mode: Shift + Arrow to extend selection
--map("v", "<S-Left>", "<Left>", opts)
--map("v", "<S-Right>", "<Right>", opts)
--map("v", "<S-Up>", "<Up>", opts)
--map("v", "<S-Down>", "<Down>", opts)
--
--

vim.keymap.set("n", "<LeftMouse>", function()
  vim.cmd("normal! gv")
  vim.cmd("startinsert")
end, { silent = true })

-- Save file and go to Normal mode (Totally silent)
--vim.keymap.set("i", "<C-s>", "<cmd>silent! write<cr><Esc>", { desc = "Silent Save and Normal Mode" })
--vim.keymap.set("n", "<C-s>", "<cmd>silent! write<cr>", { desc = "Silent Save" })
-- vim.keymap.set("i", "<C-s>", "<Esc>:w<cr>", { desc = "Save and exit insert mode" })
--vim.keymap.set("n", "<C-s>", ":w<cr>", { desc = "Save file" })

-- Copy (Ctrl + C) in Visual Mode
-- This ensures that once everything is selected, Ctrl+C copies it to your system
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("v", "<C-v>", '"+p', { desc = "Paste and replace selection" })

-- Open terminal in a vertical split on the right
vim.keymap.set("n", "<leader>tv", "<cmd>vsplit | term<cr>A", { desc = "Terminal Vertical Split" })

-- VSCode-style copy/paste/undo/redo
-- Normal mode: Paste (paste from system clipboard)
vim.keymap.set("n", "<C-v>", '"+p', { noremap = true, silent = true })

-- Insert mode: Paste
vim.keymap.set("i", "<C-v>", '<Esc>"+pa', { noremap = true, silent = true })

-- Visual mode: Paste (replace selection)
vim.keymap.set("v", "<C-v>", '"+p', { noremap = true, silent = true })

-- Undo (Ctrl+z)
vim.keymap.set("n", "<C-z>", "u", { noremap = true, silent = true })
vim.keymap.set("i", "<C-z>", "<C-o>u", { noremap = true, silent = true })

-- Redo (Ctrl+Shift+z or Ctrl+y)
vim.keymap.set("n", "<C-S-z>", "<C-r>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-y>", "<C-r>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-S-z>", "<C-o><C-r>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-y>", "<C-o><C-r>", { noremap = true, silent = true })

-- Delete word in insert mode (Ctrl+Backspace)
vim.keymap.set("i", "<C-BS>", "<C-w>", { noremap = true, silent = true, desc = "Delete word" })

-- Arrow keys in insert mode
vim.keymap.set("i", "<Left>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<Right>", "<Right>", { noremap = true, silent = true })
vim.keymap.set("i", "<Up>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("i", "<Down>", "<Down>", { noremap = true, silent = true })

-- Ctrl+Left/Right for word navigation in insert mode
vim.keymap.set("i", "<C-Left>", "<C-o>b", { noremap = true, silent = true })
vim.keymap.set("i", "<C-Right>", "<C-o>e", { noremap = true, silent = true })

-- Buffer navigation (Leader + b to show buffers, then use :b<num> or :bf/:bl)
vim.keymap.set("n", "<leader>b", "<cmd>ls<cr>:b<space>", { noremap = true, silent = true, desc = "List buffers" })

-- Close buffer (Ctrl+w)
vim.keymap.set("n", "<C-w>", "<cmd>bd<cr>", { noremap = true, silent = true })

-- Move line up/down (Alt+Up/Down)
vim.keymap.set("n", "<M-Up>", ":m-2<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-Down>", ":m+1<cr>", { noremap = true, silent = true })

-- Default mappings enabled automatically
--
--
--
vim.keymap.set({ "i", "v", "x" }, "<C-a>", "<Nop>")
