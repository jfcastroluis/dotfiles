require'lualine'.setup({
    options = {
        theme = 'gruvbox',
        section_separators = { left = '', right = ''},
        component_separators = { left = '', right = ''},
    },
    sections = {
      lualine_z = {'location', 'tabs'},
    },
})
