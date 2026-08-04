-- Highlight todo, notes, etc in comments. As so:
-- BE WARNED THAT THIS DOES NOT WORK FOR KEYWORDS WHICH ARE PREFIXED WITH \
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
-- warn: short warning
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
                alt = { -- a set of other keywords that all map to this FIX keywords
                    "fix",
                    "fixme",
                    "bug",
                    "broken",
                    "issue",
                    "FIX",
                    "FIXME",
                    "BUG",
                    "BROKEN",
                    "ISSUE",
                },
                -- signs = false, -- configure signs for some keywords individually
            },
            TODO = {
                icon = " ",
                color = "info",
                alt = { "todo", "TODO" },
            },
            HACK = {
                icon = " ",
                color = "warning",
                alt = { "hack", "HACK" },
            },
            WARN = {
                icon = " ",
                color = "warning",
                alt = { "warn", "warning", "WARN", "WARNING" },
            },
            PERF = {
                icon = " ",
                alt = {
                    "optimize",
                    "speedup",
                    "performance",
                    "OPTIMIZE",
                    "SPEEDUP",
                    "PERFORMANCE"
                },
            },
            NOTE = {
                icon = " ",
                color = "hint",
                alt = {
                    "note",
                    "info",
                    "brief",
                    "detail",
                    "details",
                    "file",
                    "fileinfo",
                    "returns",
                },
            },
            TEST = {
                icon = "⏲ ",
                color = "test",
                alt = { "test", "TEST" },
            },
        },
        highlight = {
            multiline = true,
            before = "",
            keyword = "bg",
            after = "",
            pattern = { [[.*<(KEYWORDS):]], [[.*\@(KEYWORDS)]] },
        },
        pattern = { [[\b(KEYWORDS):]] },
    },
}
