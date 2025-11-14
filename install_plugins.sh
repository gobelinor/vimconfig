#!/bin/bash

#Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#NerdTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

#Jedi-vim
git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim

#Vim fugitive
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/fugitive.git

#Vim Sensible
git clone https://tpope.io/vim/sensible.git

#Commentary with gcc  
git clone https://tpope.io/vim/commentary.git

#Copilot
git clone https://github.com/github/copilot.vim \
   ~/.vim/pack/github/start/copilot.vim

#rust.vim
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim
