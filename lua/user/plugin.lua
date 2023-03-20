local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
   {"akinsho/toggleterm.nvim"},
   "olimorris/onedarkpro.nvim",
   'norcalli/nvim-colorizer.lua',
   { "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" }, -- Have packer manage itself
   { "preservim/nerdcommenter" },
   { "sainnhe/gruvbox-material" },
   "akinsho/bufferline.nvim",
  -- For better dashboard
   {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
   },
  { "catppuccin/nvim", name = "catppuccin" },
   'lewis6991/impatient.nvim',
   {
    'nvim-lualine/lualine.nvim',
    --dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
  },
  -- For better session management
   { 'JoseConseco/telescope_sessions_picker.nvim'  },
   { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
   {
    'nvim-telescope/telescope.nvim', version = '0.1.0',
    -- or                            , branch = '0.1.x',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
   'jiangmiao/auto-pairs',
   {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    version = 'nightly' -- optional, updated every week. (see issue #1193)
  },
   { "Mofiqul/dracula.nvim" },
   {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to  the default settings
        -- refer to the configuration section below
      }
    end
  },
   "folke/tokyonight.nvim",
  -- For prettier
  ('jose-elias-alvarez/null-ls.nvim'),
  ('MunifTanjim/prettier.nvim'),
  --({
    --'rose-pine/neovim',
    --as = 'rose-pine',
    --config = function ()
      --require("rose-pine").setup()
      --vim.cmd('colorscheme rose-pine')
    --end
  --})

   {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  },
})
