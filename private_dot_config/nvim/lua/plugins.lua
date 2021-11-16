--https://github.com/wbthomason/packer.nvim/issues/282
vim.cmd([[
  packadd packer.nvim
]])

return require("packer").startup(function()
	use({ "wbthomason/packer.nvim" })

	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
		},
	})
	require("plugins.telescope")

	use({ "neovim/nvim-lspconfig" })
	require("plugins.nvim-lspconfig")
	use({ "glepnir/lspsaga.nvim" })

	use({ "lambdalisue/fern.vim" })
	use({ "lambdalisue/fern-renderer-nerdfont.vim" })
	use({ "lambdalisue/nerdfont.vim" })

	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-tree").setup({})
		end,
	})
	require("nvim-tree").setup({})
	vim.g.nvim_tree_quit_on_open = 1

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	require("plugins.lualine")
	--galaxy line también tiene muy buena pinta
	--use { 'glepnir/galaxyline.nvim',
	-- 	config = function() require'my_statusline' end,
	-- 	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	-- }

	use({ "wfxr/minimap.vim" })

	use({ "gruvbox-community/gruvbox" })
	require("plugins.gruvbox")

	use({ "mhartington/formatter.nvim" })
	require("plugins.formatter")

	use({
		"phaazon/hop.nvim",
		branch = "v1", -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	})
	use({ "hrsh7th/nvim-cmp" })
	require("plugins.nvim-cmp")
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "saadparwaiz1/cmp_luasnip" })
	use("L3MON4D3/LuaSnip")
	use("williamboman/nvim-lsp-installer")
	local lsp_installer = require("nvim-lsp-installer")

	-- Register a handler that will be called for all installed servers.
	-- Alternatively, you may also register handlers on specific server instances instead (see example below).
	lsp_installer.on_server_ready(function(server)
		local opts = {}

		-- (optional) Customize the options passed to the server
		-- if server.name == "tsserver" then
		--     opts.root_dir = function() ... end
		-- end

		-- This setup() function is exactly the same as lspconfig's setup function.
		-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/ADVANCED_README.md
		server:setup(opts)
	end)

	use({ "nvim-treesitter/nvim-treesitter" })
	require("nvim-treesitter.configs").setup({
		highlight = {
			enable = true,
		},
	})

	use({ "kosayoda/nvim-lightbulb" })
	use({ "flazz/vim-colorschemes" })
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	require("gitsigns").setup()
	use {"akinsho/toggleterm.nvim"}
	require("toggleterm").setup({
		open_mapping = [[<c-\>]],
	})

	use ({ 'jbyuki/instant.nvim'})
	vim.g.instant_username = "jfcastroluis"
end)
