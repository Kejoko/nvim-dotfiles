return {
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            },
            ensure_installed = {
                "clang-format",
                "clangd",
                "glsl-analyzer",
                "neocmake",
                "bashls",
                "jsonls",
                "yamlls",
                "markdown_oxide",
            }
        }
    }
}
