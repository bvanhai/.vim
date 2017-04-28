#!/usr/bin/env ruby

# ==============================================================================
# File:     ~/.vim/update.rb
# Author:   Tung Le
# Source:   https://github.com/tungel/.vim
#
# Comment:
# ==============================================================================

# vim: foldmethod=marker
package_list = {
  'vim-fugitive' => 'https://github.com/tpope/vim-fugitive.git',
  'unite.vim' => 'https://github.com/Shougo/unite.vim.git',
#  'vimproc.vim' => 'https://github.com/Shougo/vimproc.vim.git',
  'neosnippet.vim' => 'https://github.com/Shougo/neosnippet.vim.git',
  'unite-outline' => 'https://github.com/Shougo/unite-outline.git',
  'vim-airline' => 'https://github.com/bling/vim-airline.git',
  'vim-snippets' => 'https://github.com/honza/vim-snippets.git',
#  'unite-tag' => 'https://github.com/tsukkee/unite-tag.git',
  'vim-rails' => 'https://github.com/tpope/vim-rails.git',
#  'vim-surround' => 'https://github.com/tpope/vim-surround.git',
#  'unite-grep-vcs' => 'https://github.com/lambdalisue/unite-grep-vcs.git',
#  'vim-session' => 'https://github.com/xolox/vim-session.git',
  'nerdtree' => 'https://github.com/scrooloose/nerdtree.git',
#  'delimitMate' => 'https://github.com/Raimondi/delimitMate.git',
  'vim-easymotion' => 'https://github.com/Lokaltog/vim-easymotion.git',
#  'neomru.vim' => 'https://github.com/Shougo/neomru.vim.git',
#  'crunch.vim' => 'https://github.com/arecarn/crunch.vim.git',
  'rainbow' => 'https://github.com/luochen1990/rainbow.git',
#  'selection.vim' => 'https://github.com/arecarn/selection.vim.git',
  'syntastic' => 'https://github.com/scrooloose/syntastic.git',
#  'tabular' => 'https://github.com/godlygeek/tabular.git',
  'tagbar' => 'https://github.com/majutsushi/tagbar.git',

  # Clojure {{{
  'vim-fireplace' => 'https://github.com/tpope/vim-fireplace.git',
  'vim-clojure-static' => 'https://github.com/guns/vim-clojure-static.git',
#  'vim-salve' => 'https://github.com/tpope/vim-salve.git',
  'vim-dispatch' => 'https://github.com/tpope/vim-dispatch.git',
#  'vim-sexp' => 'https://github.com/guns/vim-sexp',
#  'vim-sexp-mappings-for-regular-people' => 'https://github.com/tpope/vim-sexp-mappings-for-regular-people',
  # end Clojure }}}

#  'vimux' => 'https://github.com/benmills/vimux.git',
  'vim-table-mode' => 'https://github.com/dhruvasagar/vim-table-mode.git',
  'vim-commentary' => 'https://github.com/tpope/vim-commentary.git',
  'indentLine' => 'https://github.com/Yggdroot/indentLine.git',
  'deoplete.nvim' => 'https://github.com/Shougo/deoplete.nvim.git',
  'vim-test' => 'https://github.com/janko-m/vim-test.git',
  'neoterm' => 'https://github.com/kassio/neoterm.git',
#  'vim-follow-my-lead' => 'https://github.com/ktonga/vim-follow-my-lead.git',
  'vim-gitgutter' => 'https://github.com/airblade/vim-gitgutter.git',
  'vim-rest-console' => 'https://github.com/diepm/vim-rest-console.git',
  'neomake' => 'https://github.com/benekastah/neomake.git',

  'vim-sneak' => 'https://github.com/justinmk/vim-sneak.git',
#  'vim-scala' => 'https://github.com/derekwyatt/vim-scala.git',
  'vim-simple-todo' => 'https://github.com/vitalk/vim-simple-todo.git',
#  'vim-ragtag' => 'https://github.com/tpope/vim-ragtag.git',
  'vim-racer' => 'https://github.com/racer-rust/vim-racer.git',
#  'vim-misc' => 'https://github.com/xolox/vim-misc.git',
  'vim-latex' => 'https://github.com/vim-latex/vim-latex.git',
#  'vim-json' => 'https://github.com/elzr/vim-json.git',
#  'vim-jdaddy' => 'https://github.com/tpope/vim-jdaddy.git',
  'vim-indent-guides' => 'https://github.com/nathanaelkane/vim-indent-guides.git',
#  'vim-go' => 'https://github.com/fatih/vim-go.git',
  'cmdalias.vim' => 'https://github.com/vim-scripts/cmdalias.vim.git',
  'vim-colors-solarized' => 'https://github.com/altercation/vim-colors-solarized.git',
#  'vim-abolish' => 'https://github.com/tpope/vim-abolish.git',
  'unite-quickfix' => 'https://github.com/osyo-manga/unite-quickfix.git',
  'unite-colorscheme' => 'https://github.com/ujihisa/unite-colorscheme.git',
#  'rust.vim' => 'https://github.com/rust-lang/rust.vim.git',
#  'neco-syntax' => 'https://github.com/Shougo/neco-syntax.git',
#  'lisper-vim' => 'https://github.com/mattn/lisper-vim.git',
#  'ctrlp.vim' => 'https://github.com/kien/ctrlp.vim.git',
#  'molokai' => 'https://github.com/tomasr/molokai.git',
#  'dragvisuals.vim' => 'https://github.com/gavinbeatty/dragvisuals.vim.git',
#  'vim-rng' => 'https://github.com/dahu/vim-rng.git'
}

package_list.each do |name, link|
  `git status`
  `git subtree pull --prefix bundle/#{name} #{link} master --squash`
end
