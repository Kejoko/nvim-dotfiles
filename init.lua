-------------------------------------------------------------------------------
-- vim stuff
-------------------------------------------------------------------------------

require "vim.environment"
require "vim.options"
require "vim.keymaps"
require "vim.autocmds"

-------------------------------------------------------------------------------
-- lazy.nvim to manage plugins
-------------------------------------------------------------------------------

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error("Error cloning lazy.nvim:\n" .. out)
    end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
require("lazy").setup({
    require "plugins.mason",
    require "plugins.lspconfig",
    require "plugins.gitsigns",
    require "plugins.todo-comments",
    require "plugins.neo-tree",
    require "plugins.startup-nvim",
    require "plugins.nvim-treesitter",
    require "plugins.nvim-treesitter-context",
    require "plugins.conform",
    require "plugins.vim-illuminate",
    require "plugins.telescope",
    require "plugins.nvim-cmp",
    require "plugins.autopairs",
    require "plugins.themes",
}, {
  -- additional lazyvim settings here seemingly (ui characters and whatnot??)
})

-- vim.cmd("colorscheme oxocarbon")
vim.cmd("colorscheme moonfly")
-- vim.cmd("colorscheme carbonfox")
-- vim.cmd("colorscheme citruszest")
-- vim.cmd("colorscheme cyberdream")
-- vim.cmd("colorscheme modus")
-- vim.cmd("colorscheme oldschool")

