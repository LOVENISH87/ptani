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

-- Normal mode: Copy all (yank entire buffer)
map("n", "<C-c>", "ggVGy", opts)

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
