function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

-- normal mode
function nmap(shortcut, command)
  map('n', shortcut, command)
end

-- insert mode
function imap(shortcut, command)
  map('i', shortcut, command)
end

-- visual mode
function vmap(shortcut, command)
  map('v', shortcut, command)
end


function cmap(shortcut, command)
  map('c', shortcut, command)
end

-- terminal mode
function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- enable Ctrl+hjkl in insert and command modes
nmap("<C-h>", "<Left>")
nmap("<C-j>", "<Down>")
nmap("<C-k>", "<Up>")
nmap("<C-l>", "<Right>")
imap("<C-h>", "<Left>")
imap("<C-j>", "<Down>")
imap("<C-k>", "<Up>")
imap("<C-l>", "<Right>")

-- terminal
nmap("<leader>tl",":split<cr> | <C-W><Down> | :set nonumber | :set norelativenumber | :terminal<cr> | A")
nmap("<leader>tn",":split<cr> | <C-W><Down> | :set nonumber | :set norelativenumber | :terminal<cr> | A ssh nuc<cr>")
--tmap("<Esc>", "<C-\\><C-n>")

-- nvim-tree toogle
nmap("<Leader>e", ":NvimTreeToggle<cr>")

-- numbers toogle
nmap("<Leader>0", ":lua vim.o.number=not vim.wo.number<cr> :lua vim.o.relativenumber=not vim.wo.relativenumber<cr>")
