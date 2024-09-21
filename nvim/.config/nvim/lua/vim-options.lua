vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set linebreak")

--set spelling lang
vim.opt.spelllang='en_us'
vim.cmd[[autocmd FileType markdown,md,text setlocal spell]]

--show line numbers
vim.wo.number = true

--set right margin/gutter at 120 chars
vim.opt.colorcolumn = "120"

--set leader key to be space
vim.g.mapleader=" "

-- enable the active cursor line
vim.opt.cursorline = true

-- min number of lines to show at top/bottom when scrolling
vim.opt.scrolloff = 8

--enable incremantal search highlighting
vim.opt.incsearch = true

--ignore case while searching
vim.opt.ignorecase = true

-- disable the showing of mode in the messages area since we use lualine that shows it better
vim.opt.showmode = false

-- use system clipboard as default register
vim.opt.clipboard = "unnamed,unnamedplus"

--word wrap options
vim.keymap.set('n', '<leader>ww', ':set wrap<CR>', {desc='Word wrap on', silent=true})
vim.keymap.set('n', '<leader>nw', ':set nowrap<CR>', {desc='Word wrap off', silent=true})

--hide the search highlighting
vim.keymap.set('n', '<leader>hh', ':nohlsearch<CR>', {desc='Hide search highlights', silent=true})

-- spell checking
vim.keymap.set('n', '<leader>sc', ':setlocal spell<CR>',   {desc='Turn spell check on', silent=true})
vim.keymap.set('n', '<leader>ns', ':setlocal nospell<CR>', {desc='Turn spell check off', silent=true})

--better navigation between panes
vim.keymap.set('n', '<c-Up>',    ':wincmd k<CR>', {desc='Move to pane above', silent=true})
vim.keymap.set('n', '<c-Down>',  ':wincmd j<CR>', {desc='Move to pane below', silent=true})
vim.keymap.set('n', '<c-Left>',  ':wincmd h<CR>', {desc='Move to pane to the left', silent=true})
vim.keymap.set('n', '<c-Right>', ':wincmd l<CR>', {desc='Move to pane to the right', silent=true})

vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', {desc='Move to pane above', silent=true})
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', {desc='Move to pane below', silent=true})
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', {desc='Move to pane to the left', silent=true})
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', {desc='Move to pane to the right', silent=true})

-- these are specific to terminal mode pane navigation
vim.keymap.set('t', '<c-Up>',    [[<Cmd>wincmd k<CR>]], {desc='Term move to pane above', silent=true})
vim.keymap.set('t', '<c-Down>',  [[<Cmd>wincmd j<CR>]], {desc='Term move to pane below', silent=true})
vim.keymap.set('t', '<c-Left>',  [[<Cmd>wincmd h<CR>]], {desc='Term move to pane to the left', silent=true})
vim.keymap.set('t', '<c-Right>', [[<Cmd>wincmd l<CR>]], {desc='Term move to pane to the right', silent=true})

vim.keymap.set('t', '<c-k>', [[<Cmd>wincmd k<CR>]], {desc='Term move to pane above', silent=true})
vim.keymap.set('t', '<c-j>', [[<Cmd>wincmd j<CR>]], {desc='Term move to pane below', silent=true})
vim.keymap.set('t', '<c-h>', [[<Cmd>wincmd h<CR>]], {desc='Term move to pane to the left', silent=true})
vim.keymap.set('t', '<c-l>', [[<Cmd>wincmd l<CR>]], {desc='Term move to pane to the right', silent=true})

-- split window
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', {desc='Split window vertically', silent=true})
vim.keymap.set('n', '<leader>sh', ':split<CR>',  {desc='Split window horizontally', silent=true})

-- resizing horizontal and vertical splits
vim.keymap.set('n', '<A-k>', ':resize +1<CR>', {desc='Make horizontal window bigger', silent=true})
vim.keymap.set('n', '<A-j>', ':resize -1<CR>', {desc='Make horizontal window smaller', silent=true})
vim.keymap.set('n', '<A-h>', ':vertical resize -1<CR>', {desc='Make vertical window smaller', silent=true})
vim.keymap.set('n', '<A-l>', ':vertical resize +1<CR>', {desc='Make vertical window bigger', silent=true})

--save and quit
vim.keymap.set('n', '<c-w>',     ':bp|bd #<CR>', {desc='Close the buffer', silent=true})
vim.keymap.set('n', '<c-q>',     ':qa<CR>',      {desc='Quit NeoVim', silent=true})
vim.keymap.set('n', '<c-s>',     ':w<CR>',       {desc='Save the buffer', silent=true})

--buffer navigation
vim.keymap.set('n', '<c-PageUp>',   ':bNext<CR>', {desc='Previous buffer', silent=true})
vim.keymap.set('n', '[b',           ':bNext<CR>', {desc='Previous buffer', silent=true})
vim.keymap.set('n', '<c-PageDown>', ':bnext<CR>', {desc='Next buffer', silent=true})
vim.keymap.set('n', ']b',           ':bnext<CR>', {desc='Next buffer', silent=true})
vim.keymap.set('n', '<leader>nb',   ':enew<CR>',  {desc='New buffer', silent=true})

--better copy/paste 
vim.keymap.set('v',       '<c-c>',     '"+y',       {desc='Copy to clipboard'})
vim.keymap.set('v',       '<c-x>',     '"+x',       {desc='Cut to clipboard'})
vim.keymap.set('v',       '<c-v>',     'c<ESC>"+p', {desc='Paste from clipboard'})
vim.keymap.set('i',       '<c-v>',     '<ESC>"+pa', {desc='Paste from clipboard'})
vim.keymap.set({'v','n'}, '<c-a>',     '<ESC>ggVG', {desc='Select all'})

--move lines up/down
vim.keymap.set('n', "<A-Down>", ':move+1<CR>',         {desc='Move line down', silent=true})
vim.keymap.set('n', '<A-Up>',   ':move-2<CR>',         {desc='Move line up', silent=true})
vim.keymap.set('i', "<A-Down>", '<Esc>:move+1<CR>',    {desc='Move line down', silent=true})
vim.keymap.set('i', '<A-Up>',   '<Esc>:move-2<CR>',    {desc='Move line up', silent=true})
vim.keymap.set('v', '<A-Down>', ":move '>+1<CR>gv=gv", {desc='Move selection down', silent=true})
vim.keymap.set('v', '<A-Up>',   ":move '<-2<CR>gv=gv", {desc='Move selection up', silent=true})

-- don't lose selection when indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '=', '=gv')

-- override default behavior of putting deleted stuff in register
vim.keymap.set({'v','x','n'}, 'd', '"_d')
vim.keymap.set({'v','x','n'}, 'D', '"_D')
vim.keymap.set({'v','x','n'}, 'c', '"_c')
vim.keymap.set({'v','x','n'}, 'C', '"_C')
vim.keymap.set({'v','x','n'}, 'x', '"_x')
vim.keymap.set({'v','x','n'}, 'X', '"_X')

