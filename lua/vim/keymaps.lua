-------------------------------------------------------------------------------
-- vim keymaps
--  See `:help vim.keymap.set()`
-------------------------------------------------------------------------------

-- Never press capital Q
vim.keymap.set("n", "Q", "<nop>")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Keep cursor in the middle of the screen when we jump up/down bu half-page
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- replace the word you're on, throughout the whole file
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "[R]ename [W]ord in buffer" })

-- close the currently open buffer but don't close the currently open window
vim.keymap.set("n", "<leader>hb", ":bp<bar>sp<bar>bn<bar>bd!<CR>", { desc = "[H]ide [B]uffer" })

-- Open a terminal in the bottom of the current window
vim.keymap.set("n", "<C-/>", ":split | resize 20 | term <CR> a")

-- Close the terminal
-- NOTE: This only works in terminal mode
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("t", "<C-/>", "<C-\\><C-n>:bd!<CR>", { desc = "Kill the terminal and destroy the window" })

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Keybindings for moving between buffers as we would do in a normal IDE
vim.keymap.set("n", "<S-h>", ":bp<CR>")
vim.keymap.set("n", "<S-l>", ":bn<CR>")
