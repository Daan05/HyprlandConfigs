return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
        parser_config.crust = {
            install_info = {
                url = "https://github.com/Daan05/tree-sitter-crust/tree/developer",
                files = { "src/parser.c" },
            },
            filetype = "crust",
        }

        configs.setup({
            ensure_installed = { "c", "rust", "lua", "vim", "vimdoc", "cpp", "zig", "crust" },
            auto_install = false,
            modules = {},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            ignore_install = {},
        })
    end
}
