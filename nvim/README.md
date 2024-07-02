# Neovim config
 This is my current neovim setup. I am making this README so that I remember everything that needs to be done to set this up in the
 future. The base of this configuration was done using kickstart.nvim which can be found [here](https://github.com/nvim-lua/kickstart.nvim).

## How to setup
- Clone this repo in the USER_PROFILE/.config directory on your machine
- Open nvim in terminal and let it install all plugins
- You can install LSP's using the :Mason command in nvim and selecting i on the LSP that you want to install
- You will have to install [ripgrep](https://github.com/BurntSushi/ripgrep#installation) to get the full functionality of telescope
- You may have to install [nerd-fonts](https://github.com/ryanoasis/nerd-fonts) to get icons inside of neotree

## Total npm installed packages
- custom-elements-languageserver
- typescript
- typescript-language-server

## Extra plugins that I installed
- maxmellon/vim-jsx-pretty
- numToStr/Comment.nvim
- windwp/nvim-ts-autotag
- folke/tokyonight.nvim

## Language servers installed through Mason
- css-lsp
- custom-elements-languageserver
- emmet-ls
- eslint-lsp
- eslint_d
- html-lsp
- js-debug-adapter
- lua-language-server
- prettier
- python-lsp-server
- typescript-language-server
- debugpy
- djlint
- node-debug2-adapter

## If you are working with vue files you will need to run the following commands in neovim
```
TSInstall vue
TSInstall css
```
