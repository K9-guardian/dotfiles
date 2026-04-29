return function(use)
   use "fladson/vim-kitty"
   use "wlangstroth/vim-racket"
   use "adimit/prolog.vim"

   use "Olical/conjure"
   use "tpope/vim-dispatch"
   use { "radenling/vim-dispatch-neovim", requires = { "tpope/vim-dispatch" } }
   use { "clojure-vim/vim-jack-in", requires = { "radenling/vim-dispatch-neovim" } }
end
