vim.pack.add({
   "https://github.com/lervag/vimtex",
   "https://github.com/L3MON4D3/LuaSnip",
   "https://github.com/kaarmu/typst.vim",
   "https://github.com/chomosuke/typst-preview.nvim",
})

require("plugins.configs.vimtex")
require("plugins.configs.luasnip")
require("plugins.configs.typst")
require("plugins.configs.typst-preview")
