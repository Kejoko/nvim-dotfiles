return { -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs", -- Sets main module to use for opts
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
        ensure_installed = {
            -- the good stuff
            "c",
            "cpp",
            "cmake",
            "glsl",

            -- scripting
            "bash",
            "python",

            -- documentation
            "diff",
            "html",
            "markdown",
            "markdown_inline",

            -- parameters etc
            "yaml",
            "json",

            -- configuration stuff
            "query", -- i think this is a treesitter thing, not entirely sure
            "vim",
            "vimdoc",
        },
        -- Autoinstall languages that are not installed
        auto_install = true,
        highlight = {
            enable = true,
            -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
            --  If you are experiencing weird indenting issues, add the language to
            --  the list of additional_vim_regex_highlighting and disabled languages for indent.
            additional_vim_regex_highlighting = { "ruby" },
        },
        indent = {
            enable = true,
            disable = {
                "ruby",
            },
        },
    },
}
