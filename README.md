# abyss.vim

**WARNING: This repository is deprecated, use [abyss.nvim](https://github.com/barrientosvctor/abyss.nvim) instead.**

The port of Visual Studio Code's Abyss colorscheme for Vim.

![Abyss.vim preview](/screenshots/abyss-preview.png)

## Installation
Install using their favourite package manager, or use Vim's built-in package manager:

> Unix:
```
mkdir -p ~/.vim/pack/victor/start
cd ~/.vim/pack/victor/start
git clone https://github.com/barrientosvctor/abyss.vim.git
```

> Windows (PowerShell):
```
mkdir $HOME/vimfiles/pack/victor/start
cd $HOME/vimfiles/pack/victor/start
git clone https://github.com/barrientosvctor/abyss.vim.git
```

## Global variables available

| Global Variable         | Description                                 | Data Type | Default Value |
|-------------------------|---------------------------------------------|-----------|---------------|
| g:abyss_italic_comments | Enables italic comments in colorscheme      | Boolean   | 1             |
| g:abyss_italic          | Enables italic font style in colorscheme    | Boolean   | 0             |
| g:abyss_bold            | Enables bold font style in colorscheme      | Boolean   | 0             |
| g:abyss_underline       | Enables underline font style in colorscheme | Boolean   | 0             |
| g:abyss_undercurl       | Enables undercurl font style in colorscheme | Boolean   | 0             |
