return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use{ 'neoclide/coc.nvim', branch= 'release'}
	use 'nvim-treesitter/nvim-treesitter'
	use 'farmergreg/vim-lastplace'
	use {'junegunn/fzf', run = '->fzf#install'}
	use 'junegunn/fzf.vim'
    use 'phaazon/hop.nvim'
    use 'b3nj5m1n/kommentary'
    use 'nvim-lualine/lualine.nvim'
    use 'RishabhRD/nvim-cheat.sh'
    use 'RishabhRD/popfix'
    use 'numToStr/FTerm.nvim'
    use 'nvim-lua/popup.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'kdheepak/tabline.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'theprimeagen/harpoon'
    use 'overcache/NeoSolarized'
    use 'nekonako/xresources-nvim'
    use 'kyazdani42/nvim-tree.lua'
end)
