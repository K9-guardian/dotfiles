return function(use)
   use "fladson/vim-kitty"
   use "wlangstroth/vim-racket"
   use "adimit/prolog.vim"

   use {
      "Olical/conjure",
      config = function()
         vim.g["conjure#extract#tree_sitter#enabled"] = true
      end
   }
   use { "clojure-vim/vim-jack-in", requires = { "radenling/vim-dispatch-neovim" } }
end
