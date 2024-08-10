-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim"

	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	use({ "kepano/flexoki-neovim", as = "flexoki" })

	use {
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	}

	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			--- Uncomment these if you want to manage the language servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{"neovim/nvim-lspconfig"},
			-- Autocompletion
			{"hrsh7th/nvim-cmp"},
			{"hrsh7th/cmp-nvim-lsp"},
			{"L3MON4D3/LuaSnip"},
		}
	}

	use "williamboman/mason.nvim"

    use "m4xshen/autoclose.nvim"

    use {
        "folke/noice.nvim",
        requires = {
            {"MunifTanjim/nui.nvim"},
            -- {"rcarriga/nvim-notify"},
        }
    }

    use {
        "hrsh7th/cmp-buffer",
        require = {
            {"hrsh7th/nvim-cmp"},  -- The completion plugin
            {"hrsh7th/cmp-buffer"},  -- Buffer completions
            {"hrsh7th/cmp-path"},    -- Path completions
        }
    }

    use {
        "nvim-lualine/lualine.nvim",
        requires = { 
            {"nvim-tree/nvim-web-devicons"},
            opt = true }
    }

    use {
        "goolord/alpha-nvim",
        requires = { 'nvim-tree/nvim-web-devicons' }, -- Optional for icons
        config = function()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }

    use {
        "numToStr/Comment.nvim",
        config = function()
            require('Comment').setup()
        end
    }

    use {
        "kevinhwang91/nvim-ufo",
        requires = {
            {"kevinhwang91/promise-async"},
        },
        config = function()
            require('ufo').setup({
                -- your configuration options here
                provider_selector = function(bufnr, filetype, buftype)
                    return {'treesitter', 'indent'}
                end,
            })
        end,
    }

end)
