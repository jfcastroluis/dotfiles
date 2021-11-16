require('telescope').setup{
    defaults = {
	prompt_prefix="🔎 ",
	layout_strategy = "horizontal",
	layout_config = {
            horizontal = {
                prompt_position = "top",
                mirror = true,
	    }
	}
    }
}


local M = {}
M.search_flossystems_project = function(project)
    require("telescope.builtin").find_files({
        prompt_title = "Flossystems - " .. project,
        cwd = "$HOME/Flossystems/projects/" .. project,
    })
end

-- Mappings
nmap("<leader>tb", ":Telescope buffers<cr>")
nmap("<leader>tf", ":Telescope find_files<cr>")
nmap("<leader>tg", ":Telescope live_grep<cr>")
nmap("<leader>th", ":Telescope help_tags<cr>")
nmap("<leader>tpt", ":lua require('plugins.telescope').search_flossystems_project('test')<cr>")
--nmap("<leader>rpl", ":lua require('plugins.telescope').search_flossystems_project('lasalle')<cr>")
--nmap("<leader>rpt", ":lua require('plugins.telescope').search_flossystems_project('taiga')<cr>")

-- exports
return M
