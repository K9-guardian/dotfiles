vim.g.gutentags_project_root = { '.gutentags' }
vim.g.gutentags_add_default_project_roots = 0

vim.g.gutentags_ctags_tagfile = ".tags"

vim.keymap.set('n', 'g]', function()
   require('fzf-lua').tags({ query = vim.fn.expand('<cword>') })
end)
