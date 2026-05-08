vim.b.surround_81 = "``\r''"
vim.b.surround_113 = "`\r'"

vim.g.vimtex_syntax_nospell_comments = 1
vim.opt_local.spell = true

vim.keymap.set("n", "dsm", "<Plug>(vimtex-env-delete-math)", { buffer = true })
vim.keymap.set("n", "csm", "<Plug>(vimtex-env-change-math)", { buffer = true })
vim.keymap.set("n", "tsm", "<Plug>(vimtex-env-toggle-math)", { buffer = true })

vim.keymap.set({ "o", "x" }, "am", "<Plug>(vimtex-a$)", { buffer = true })
vim.keymap.set({ "o", "x" }, "im", "<Plug>(vimtex-i$)", { buffer = true })
vim.keymap.set({ "o", "x" }, "ai", "<Plug>(vimtex-am)", { buffer = true })
vim.keymap.set({ "o", "x" }, "ii", "<Plug>(vimtex-im)", { buffer = true })
