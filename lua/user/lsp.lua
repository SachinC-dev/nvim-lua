local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'lua_ls',
})

lsp.setup()
