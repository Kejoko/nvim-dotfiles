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
-- })

-- For getting our kanagawa color overrides to appear
vim.api.nvim_create_autocmd("VimEnter", {
    desc = "Apply kanagawa color overrides",
    group = vim.api.nvim_create_augroup("kanagawa-compile", { clear = true }),
    command = "KanagawaCompile",
})

-- For getting startup to actually work
vim.api.nvim_create_autocmd("VimEnter", {
    desc = "Start the Startup plugin",
    group = vim.api.nvim_create_augroup("startup-startup", { clear = true }),
    command = "Startup display",
})

-- To use tabs instead of spaces in GD Script files
-- NOTE: This does not currently work, we are leaving it here so we can potentially fix / expand it in the future.
-- Currently, the tab expansion is given to us in our conditional statement in options.lua where we detect whether
-- or not we are in a Godot project
vim.api.nvim_create_autocmd("FileType", {
    desc = "Set GD Script files to use tabs instead of spaces",
    pattern = { "*.gd" },
    group = vim.api.nvim_create_augroup("gdscript-set-tabs", { clear = true }),
    callback = function()
        vim.opt.expandtab = false
    end,
})
