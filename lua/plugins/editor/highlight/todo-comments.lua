-- Highlight todo, notes, etc in comments. As so:
-- NOTE: a note
-- @NOTE another
-- @note noting
-- \note note some more homie
-- @info information
-- \info some more info yeehaw!
-- @brief a brief description
-- \brief gimme a brief deet
-- @detail a detailed description
-- \detail gimme a detailed deet homie
-- TODO: todo
-- @todo do something
-- \todo slashed todo
-- FIX: fix something
-- @bug there is a bug
-- \bug there is another bug!
-- WARNING: testing warnings
-- @warning a warning
-- \warning doxygen warning
-- TEST: a test
-- @test another test
-- \test testing test
return {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        signs = false,
        keywords = {
            FIX = {
                icon = " ", -- icon used for the sign, and in search results
                color = "error", -- can be a hex color, or a named color (see below)
                alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "bug" }, -- a set of other keywords that all map to this FIX keywords
                -- signs = false, -- configure signs for some keywords individually
            },
            TODO = {
                icon = " ",
                color = "info",
                alt = { "todo" },
            },
            HACK = {
                icon = " ",
                color = "warning",
            },
            WARN = {
                icon = " ",
                color = "warning",
                alt = { "WARNING", "warning", "XXX" },
            },
            PERF = {
                icon = " ",
                alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" },
            },
            NOTE = {
                icon = " ",
                color = "hint",
                alt = { "INFO", "note", "info", "brief", "detail" },
            },
            TEST = {
                icon = "⏲ ",
                color = "test",
                alt = { "TESTING", "PASSED", "FAILED", "test" },
            },
        },
        highlight = {
            multiline = true,
            before = "",
            keyword = "wide_bg",
            after = "",
            pattern = { [[.*<(KEYWORDS):]], [[.*\@(KEYWORDS)]] },
        },
        pattern = { [[\b(KEYWORDS):]] },
    },
}
