vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	'rose-pine/neovim',
	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
		vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
		vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
	end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('nvim-lua/plenary.nvim')
  use {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	requires = { {"nvim-lua/plenary.nvim"}}
  }
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
  	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	requires = {
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	-- LSP Support
	{'neovim/nvim-lspconfig'},
	-- Autocompletion
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'L3MON4D3/LuaSnip'},
	}
      }
end)

