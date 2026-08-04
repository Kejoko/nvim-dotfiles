-------------------------------------------------------------------------------
-- vim autocommands
--  See `:help lua-guide-autocommands`
-------------------------------------------------------------------------------

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- -- For the background of Neo-Tree
-- vim.api.nvim_create_autocmd("VimEnter", {
--     desc = "Make Neo-Tree background be darker than the text editor",
--     group = vim.api.nvim_create_augroup("neo-tree-set-background", { clear = true }),
--     callback = function()
--         vim.api.nvim_set_hl(0, "NeoTreeDimText", { bg = "#181818" })
--         vim.api.nvim_set_hl(0, "NeoTreeFileName", { bg = "#181818" })
--         vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#181818" })
--         vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#181818" })
--         vim.api.nvim_set_hl(0, "NeoTreeTabActive", { bg = "#181818" })
--         vim.api.nvim_set_hl(0, "NeoTreeTabInactive", { bg = "#181818" })
--         vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorActive", { bg = "#181818" })
--         vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", { bg = "#181818" })
--     end,
-- }

-- Turn off line numbers and sign columns in the terminal (only on first enter into this terminal).
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("TerminalSettings", { clear = true }),
  pattern = "*",
  callback = function()
      vim.opt.signcolumn = "no"
      vim.opt.number = false
      vim.opt.relativenumber = false
  end,
})

-- Set the sign column to be off when we are in the startup buffer (or when we enter terminal).
-- We need to check terminal here, because if we re-enter an already open terminal then
-- the line numbers and sign column will appear (because it isn't the first entry of the terminal).
-- Make the startup buffer appear cleanly (no sign column, cursor line, line number column)
vim.api.nvim_create_autocmd("BufEnter", {
    desc = "Toggle sign column and numberlines in startup buffer",
    group = vim.api.nvim_create_augroup("auto-sign_column", { clear = true }),
    callback = function()
        local buffer = vim.api.nvim_get_current_buf()
        local number = vim.api.nvim_buf_get_number(buffer)
        local is_terminal = vim.bo.buftype == 'terminal'
        if number == 1 or is_terminal then
            vim.opt.signcolumn = "no"
            vim.opt.number = false
            vim.opt.relativenumber = false
            vim.opt.cursorline = false
        else
            vim.opt.signcolumn = "yes"
            vim.opt.number = true
            vim.opt.relativenumber = true
            vim.opt.cursorline = true
        end
    end,
})

-- -- For getting startup to actually work
-- vim.api.nvim_create_autocmd("VimEnter", {
--     desc = "Start the Startup plugin",
--     group = vim.api.nvim_create_augroup("startup-startup", { clear = true }),
--     command = "Startup display",
-- })
