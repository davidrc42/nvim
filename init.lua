vim.g.mapleader = ' '
require('maps')
require('opts')
require('plugins')
require'nvim-treesitter.configs'.setup{ highlight = {enable=true}}
require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
require('lualine').setup()
require('tabline').setup()
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd         = true,

  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = true,
    custom = {}
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}
require'nvim-tree'.setup {}
vim.cmd'source ~/.config/nvim/vim/fzf.vim'
vim.cmd'source ~/.config/nvim/vim/startpage.vim'
vim.cmd'source ~/.config/nvim/vim/yankHL.vim'
vim.cmd[[colorscheme xresources]]
vim.o.background = "light"
vim.cmd'source ~/.config/nvim/vim/coc-config.vim'
vim.cmd'hi Normal guibg=NONE ctermbg=NONE'

