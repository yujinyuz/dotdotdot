--                  _  _
--                 (_)(_)
--    _   _  _   _  _  _  _ __   _   _  _   _  ____
--   | | | || | | || || || '_ \ | | | || | | ||_  /
--   | |_| || |_| || || || | | || |_| || |_| | / /
--    \__, | \__,_|| ||_||_| |_| \__, | \__,_|/___|
--     __/ |      _/ |            __/ |
--    |___/      |__/            |___/
--
--    Author: yujinyuz
--    GitHub: https://github.com/yujinyuz
--    Repository URL: https://github.com/yujinyuz/dotfiles
--    Desc: Collection of dotfiles gathered across different dotfiles repos

-- TODO:: Refactor these stuffs so that I would only have requires in my init.lua

vim.g.mapleader = ' '
vim.g.python3_host_prog = os.getenv('PYTHON_3_HOST_PROG')
vim.g.indent_blankline_enabled = false
vim.g.gitblame_enabled = 0

-- ultisnips
vim.g.UltiSnipsExpandTrigger = '<C-l>'

-- wincent/ferret
vim.g.FerretMap = 0

-- mbbill/undotree
vim.g.undotree_HighlightChangedWithSign = 0
vim.g.undotree_WindowLayout = 4
vim.g.undotree_SetFocusWhenToggle = 1

-- mfussenegger/nvim-dap
vim.g.dap_virtual_text = true

-- Load the keymap modifications first
require('modules.lib.keymap_mod')
require('modules/lib/rg_source')
-- Load neovim options
require('modules.options')
-- Load packer.nvim config
require('modules.plugins')
-- LSP configuration
require('modules.lsp')
-- Telescope
require('modules.telescope')
