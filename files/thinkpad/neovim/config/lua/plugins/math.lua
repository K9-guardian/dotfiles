return function(use)
   use { "lervag/vimtex", config = function() require("plugins.configs.vimtex") end }
   use { "L3MON4D3/LuaSnip", config = function() require("plugins.configs.luasnip") end }
   use { "saadparwaiz1/cmp_luasnip", requires = { "hrsh7th/nvim-cmp", "L3MON4D3/LuaSnip", } }

   use {
      "kaarmu/typst.vim",
      config = function()
         vim.g.typst_conceal = 1
         vim.opt_local.spell = true
      end
   }
   use {
      "chomosuke/typst-preview.nvim",
      config = function()
         require("typst-preview").setup {
            open_cmd = "chromium-browser %s",
            invert_colors = 'always',
         }
      end,
      tag = 'v1.*', requires = { "kaarmu/typst.vim" }
   }
end
