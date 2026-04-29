return function(use)
   use { "hrsh7th/cmp-nvim-lsp", requires = { "hrsh7th/nvim-cmp" } }
   use {
      "neovim/nvim-lspconfig",
      config = require("plugins.configs.lsp"),
      after = { "hrsh7th/cmp-nvim-lsp" },
   }
   use { "williamboman/mason.nvim", config = function() require("mason").setup() end }
   use { "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup {
            automatic_installation = true,
            -- TODO: Figure out good extensions for python and typescript
            ensure_installed = {
               "clojure_lsp",
               "gopls",
               "hls",
               "jdtls",
               "julials",
               "lua_ls",
               "rust_analyzer",
               "texlab",
               "tinymist"
            }
         }
      end,
      requires = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
   }
end
