require("formatter").setup({
	filetype = {
		lua = {
			function()
				return {
					exe = "/home/jfcastro/Downloads/stylua",
					args = {
						--            "--config-path "
						--              .. os.getenv("HOME")
						--              .. ".config/stylua/stylua.toml",
						"-",
					},
					stdin = true,
				}
			end,
		},
	},
})
