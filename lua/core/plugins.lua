local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("ellisonleao/gruvbox.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-lualine/lualine.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("ThePrimeagen/vim-be-good")
	use("goolord/alpha-nvim")
	use("nvim-lua/plenary.nvim")
	use {
             "ThePrimeagen/harpoon",
             branch = "harpoon2",
             requires = { {"nvim-lua/plenary.nvim"} }
             }

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		requires = { { "nvim-lua/plenary.nvim" }},
	})

         use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}

	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use("EdenEast/nightfox.nvim")

	use({
		"Exafunction/codeium.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({})
		end,
	})

	use {
		  'VonHeikemen/lsp-zero.nvim',
  		  branch = 'v3.x',
    		  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    			{'neovim/nvim-lspconfig'},
    			{'hrsh7th/nvim-cmp'},
    			{'hrsh7th/cmp-nvim-lsp'},
    			{'L3MON4D3/LuaSnip'},
  		}
	}

	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
})

	use {
	  'code-biscuits/nvim-biscuits',
	  requires = {
	    'nvim-treesitter/nvim-treesitter',
	     run = ':TSUpdate'
	  },
	}
       	use {
	  "folke/which-key.nvim",
	  	}
use {
  "xiyaowong/transparent.nvim", -- Plugin name and author
  config = function() -- Optional configuration function
    require("transparent").setup {
      enable = true, -- Enable transparency (default: false)
      global_alpha = 0.8, -- Adjust opacity (0.0 - 1.0, default: 1.0)
    }
  end
}


	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
