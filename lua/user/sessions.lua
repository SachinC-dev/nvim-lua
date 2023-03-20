require'telescope'.setup {
  -- your existing tele config
  extensions = {
    sessions_picker = {
      sessions_dir = vim.fn.stdpath('data') ..'/session/',  -- same as '/home/user/.local/share/nvim/session'
    }
    -- other tele extensions configs
  },
}
require('telescope').load_extension('sessions_picker')
