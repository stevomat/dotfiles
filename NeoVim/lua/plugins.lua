vim.cmd [[packadd packer.nvim]]

local packer = require('packer')

return packer.startup(function()
    use 'wbthomason/packer.nvim'

    use 'jiangmiao/auto-pairs'
    
    use 'vimwiki/vimwiki'
    
    use 'bonabeavis/ranger.vim'
    use 'rbgrouleff/bclose.vim'

    use 'sheerun/vim-polyglot'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'voldikss/vim-floaterm'

--    use 'kyazdani42/nvim-web-devicons'
--    use 'romgrk/barbar.nvim'

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

end)
