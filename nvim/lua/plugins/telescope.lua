local builtin = require('telescope.builtin');

vim.keymap.set('n', '<leader>sa', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })

vim.keymap.set('n', '<leader>se', function()
    require('telescope.builtin').diagnostics({ severity = vim.diagnostic.severity.ERROR })
end, { desc = '[S]earch [D]iagnostics (Errors Only)' })

vim.keymap.set('n', '<leader>sw', function()
    require('telescope.builtin').diagnostics({ severity = vim.diagnostic.severity.WARN })
end, { desc = '[S]earch [D]iagnostics (Warnings Only)' })

vim.keymap.set('n', '<leader>sh', function()
    require('telescope.builtin').diagnostics({ severity = vim.diagnostic.severity.HINT })
end, { desc = '[S]earch (Hints Only)' })

vim.keymap.set("n", "<leader>gf", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end);

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    keys = { { "<leader>f", "<cmd>Telescope find_files<cr>" }, },
    dependencies = { 'nvim-lua/plenary.nvim' }
}
