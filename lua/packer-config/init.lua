return require('packer').startup(function()
    use 'wbthomason/packer.nvim'  -- Packer can manage itself
    use 'frenzyexists/aquarium-vim'
    use { 'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
            },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use {'neoclide/coc.nvim', branch = 'release'} -- COC / snippet and additional text editing
    use 'andweeb/presence.nvim' -- Discord presence pluggin
    use 'norcalli/nvim-colorizer.lua' -- Colorize color hex
    use {
        'romgrk/barbar.nvim', -- Barbar 
        requires = {'kyazdani42/nvim-web-devicons'},  -- optional, for file icons
    }
    use 'nvim-lualine/lualine.nvim' -- LuaLine
    use({ "iamcco/markdown-preview.nvim", 
        run = "cd app && npm install", 
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end, 
        ft = { "markdown" }, })
    use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'folke/tokyonight.nvim'
    use 'catppuccin/nvim'
end)
