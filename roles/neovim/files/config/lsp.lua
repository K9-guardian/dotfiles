return function(use)
   use { "hrsh7th/cmp-nvim-lsp", requires = { "hrsh7th/nvim-cmp" } }
   use "neovim/nvim-lspconfig"
   use "williamboman/mason.nvim"
   use { "williamboman/mason-lspconfig.nvim",
      requires = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" }
   }
end
