require "user.plugin" -- $HOME/.config/nvim/lua/user/plugin.lua
require "user.keymap" -- $HOME/.config/nvim/lua/user/keymap.lua
require "user.treesitter" -- $HOME/.config/nvim/lua/user/treesitter.lua
require "user.telescope" -- $HOME/.config/nvim/lua/user/telescope.lua
require "user.lsp" -- $HOME/.config/nvim/lua/user/lsp.lua
require "user.sessions" -- $HOME/.config/nvim/lua/user/lsp.lua
require "user.nvim-tree" -- $HOME/.config/nvim/lua/user/nvim-tree.lua
require "user.bufferline" -- $HOME/.config/nvim/lua/user/bufferline.lua
require "user.toggleterm" -- $HOME/.config/nvim/lua/user/toggleterm.lua
require "user.cmp" -- $HOME/.config/nvim/lua/user/cmp.lua
require "user.dashboard" -- $HOME/.config/nvim/lua/user/dashboard.lua
--equire "lua.chadvim.prettier" -- $HOME/.config/nvim/lua/user/toggleterm.lua
require "user.lualine" -- $HOME/.config/nvim/lua/user/lualine.lua
require('impatient')
require('colorizer')
-- Code runner
vim.cmd[[source $HOME/.config/nvim/lua/user/coderunner.vim]]

-- Disabling numbes on terminal buffer
vim.cmd[[autocmd TermOpen * setlocal nonumber norelativenumber]]
-- Disabling auto commenting the next line
vim.cmd[[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]]
-- Disable auto popup of nvim-tree when a buffer is closed
vim.cmd[[let g:nvim_tree_auto_close=1]]

-- If you want transparency if your terminal has it.
vim.cmd[[highlight Normal guibg=None
highlight NonText guibg=None]]
--

vim.cmd[[colorscheme gruvbox-material]]
require "user.options" -- $HOME/.config/nvim/lua/user/options.lua
vim.cmd.colorscheme "catppuccin-frappe"
