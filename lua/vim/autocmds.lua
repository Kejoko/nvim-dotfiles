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

-- For the background of Neo-Tree
vim.api.nvim_create_autocmd("VimEnter", {
    desc = "Make Neo-Tree background be darker than the text editor",
    group = vim.api.nvim_create_augroup("neo-tree-set-background", { clear = true }),
    callback = function()
        vim.api.nvim_set_hl(0, "NeoTreeDimText", { bg = "#181818" })
        vim.api.nvim_set_hl(0, "NeoTreeFileName", { bg = "#181818" })
        vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#181818" })
        vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#181818" })
        vim.api.nvim_set_hl(0, "NeoTreeTabActive", { bg = "#181818" })
        vim.api.nvim_set_hl(0, "NeoTreeTabInactive", { bg = "#181818" })
        vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorActive", { bg = "#181818" })
        vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", { bg = "#181818" })
    end,
})
