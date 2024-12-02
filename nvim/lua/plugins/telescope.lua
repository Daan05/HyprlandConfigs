local builtin = require('telescope.builtin');
vim.keymap.set("n", "<leader>gf", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end);

return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  keys = { { "<leader>f", "<cmd>Telescope find_files<cr>" }, },
  dependencies = { 'nvim-lua/plenary.nvim' }
}
