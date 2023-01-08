#!/bin/env bash
# Nvim Config setup


setup_colors_github(){
    # github colorscheme
    echo "Downloading github colorscheme.."
    [ -f "colors/github.vim" ] && echo "Already exists... Exiting" && return 0
    mkdir -p "colors"
    cd "colors"
    curl "https://raw.githubusercontent.com/cormacrelf/vim-colors-github/ee42a68d95078f5a3d1c0fb14462cc781b244ee2/colors/github.vim" --output "github.vim"
    cd -
}

setup_colors_github
