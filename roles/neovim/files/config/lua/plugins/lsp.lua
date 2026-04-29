return function(use)
   use { "hrsh7th/cmp-nvim-lsp", requires = { "hrsh7th/nvim-cmp" } }
   use {
      "neovim/nvim-lspconfig",
      commit = "5bfcc89fd155b4ffc02d18ab3b7d19c2d4e246a7",
      config = function() require("plugins.configs.lsp") end,
      after = { "cmp-nvim-lsp" },
   }

   use {
      "williamboman/mason.nvim",
      commit = "fc98833b6da5de5a9c5b1446ac541577059555be",
      config = function() require("mason").setup() end,
   }
   use {
      "williamboman/mason-lspconfig.nvim",
      commit = "1a31f824b9cd5bc6f342fc29e9a53b60d74af245",
      config = function()
         require("mason-lspconfig").setup {
            automatic_installation = false,
            ensure_installed = {
               "clojure_lsp",
               -- "gopls",
               "hls",
               "jdtls",
               "julials",
               "lua_ls",
               -- "pyright",
               "rust_analyzer",
               "texlab",
               "tinymist",
               -- "typescript-language-server",
            }
         }
      end,
      requires = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
   }
end
