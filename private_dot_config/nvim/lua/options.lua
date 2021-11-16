-- Global options
vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 5

vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.showmode = false

vim.o.list = true
--vim.o.listchars = "tab:→ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨"

vim.o.showcmd = true

-- Window options


-- Buffer options


-- Set background transparent
vim.cmd([[
  autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
]])

-- Set gruvbox as colorscheme
vim.cmd([[
  colorscheme gruvbox
]])
