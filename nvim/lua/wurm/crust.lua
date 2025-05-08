-- crust filetype
vim.filetype.add({
    extension = {
        crust = "crust",
    },
})

-- crust treesitter
function UpdateCrustQueries()
    local url = "https://raw.githubusercontent.com/Daan05/tree-sitter-crust/master/queries/crust/highlights.scm"
    local dest = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter/queries/crust/highlights.scm"

    -- Create the directory if it doesn't exist
    vim.fn.mkdir(vim.fn.fnamemodify(dest, ":h"), "p")

    -- Download the file with curl
    vim.fn.system({
        "curl",
        "-fLo",
        dest,
        "--create-dirs",
        url,
    })

    -- Optional: confirm success
    if vim.v.shell_error == 0 then
        vim.notify("Downloaded highlights.scm to " .. dest, vim.log.levels.INFO)
    else
        vim.notify("Download failed!", vim.log.levels.ERROR)
    end
end

-- local lspconfig = require("lspconfig")

-- lspconfig.crust_lsp = {
--     default_config = {
--         cmd = { "/full/path/to/your/target/debug/crust-lsp" },
--         filetypes = { "crust" },
--         root_dir = function(fname)
--             return vim.fn.getcwd()
--         end,
--     },
-- }
