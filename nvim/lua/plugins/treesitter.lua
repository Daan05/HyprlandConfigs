return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "rust", "lua", "vim", "vimdoc", "cpp" },
            auto_install = false,
            modules = {},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            ignore_install = {},
        })
    end
}
