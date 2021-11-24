local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('i','th','<Esc>')
map('n',';',':')


map('v', 'f', '<Esc>')


-- move lines up and down
map('v', 'K', ':m \'<-2<CR>gv=gv')
map('v', 'J', ':m \'>+1<CR>gv=gv')
map('n', '<leader>k', ':m .-2<CR>==')
map('n', '<leader>j', ':m .+1<CR>==')
map('i', '<C-j>', '<esc>:m .+1<CR>==')
map('i', '<C-k>', '<esc>:m .-2<CR>==')

-- insert new lines in normal mode
map('n', 'o', 'o<esc>')
map('n', 'O', 'O<esc>')

-- keep cursor centered
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
map('n', 'J', 'mzJ\'z')

-- redo
map('n', 'U', '<C-r')
map('i', ',', ',<c-g>u')
map('i', '.', '.<c-g>u')
map('i', '!', '!<c-g>u')
map('i', '?', '?<c-g>u')

-- harpoon
map('n', '<leader>ha', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
map('n', '<leader>had', ':lua require("harpoon.mark").add_file()<CR>')
map('n', '<leader>g', ':lua require("harpoon.ui").nav_file(1)<CR>')
map('n', '<leader>c', ':lua require("harpoon.ui").nav_file(2)<CR>')
map('n', '<leader>r', ':lua require("harpoon.ui").nav_file(3)<CR>')
map('n', '<leader>l', ':lua require("harpoon.ui").nav_file(4)<CR>')

-- fzf
map('n', 'f', ':Files<CR>')
map('n', '<leader>ht', ':Helptags<CR>')
map('n', '<leader>hm', ':Maps<CR>')
map('n', '<leader>bo', ':Buffers<CR>')
map('n', '<leader>bd', ':BuffersDelete<CR>')
map('n', '<leader>fv', ':VimFiles<CR>')
map('n', '<leader>fh', ':HomeFiles<CR>')
map('n', '<leader>df', ':DotFiles<CR>')
map('n', '<leader>fc', ':CodeFiles<CR>')
map('n', '<leader>fi', ':History<CR>')
map('n', '<leader>rg', ':Rg<CR>')
map('n', '<leader>sd', ':SwitchDirectory<CR>')

-- file tree
map('n', '<leader>n', ':NvimTreeFindFileToggle<CR>')

-- navigate tabs
map('n', 'tk', ':tabnext<CR>')
map('n', 'tj', ':tabprev<CR>')
map('n', 'tn', ':tabe<CR>')

-- navigate splits
map('n', '<A-h>', ':wincmd h<CR>')
map('n', '<A-j>', ':wincmd j<CR>')
map('n', '<A-k>', ':wincmd k<CR>')
map('n', '<A-l>', ':wincmd l<CR>')

-- resize windows
map('n', '<C-k>', ':resize -1<CR>')
map('n', '<C-j>', ':resize +1<CR>')
map('n', '<C-l>', ':vertical resize -1<CR>')
map('n', '<C-h>', ':vertical resize +1<CR>')

-- easier saving and exiting
map('n', '<C-s>', ':w<CR>')
map('n', '<C-Q>', ':q!<CR>')

-- better line indent lines
map('v', '<', '<gv')
map('v', '>', '>gv')

-- delete,change and yank line
map('n', 'dl', 'dd')
map('n', 'cl', 'cc')
map('n', 'yl', 'yy')

-- terminal
map('n', '<C-t>', '<CMD>lua require("FTerm").toggle()<CR>')
map('t', '<C-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- cheat sheet
map('n', '<A-s>', ':Cheat<CR>')

-- hop motion
map('n', 's', ':HopWord<CR>')

vim.cmd('command! Crun lua require("FTerm").run("./a.out")')
map('n','<leader>th',':w <CR>:!gcc %<CR>:silent Crun<CR><CR>')

