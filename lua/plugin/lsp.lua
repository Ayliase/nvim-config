local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- all of this is handled by Mason
lsp_zero.setup_servers({'rust_analyzer', "clangd", "zls", "asm_lsp", "gopls", "lua-language-server"})
-- 
-- C
require'lspconfig'.clangd.setup{}
-- Rust
require'lspconfig'.rust_analyzer.setup{
    settings = {
        ['rust-analyzer'] = {
            diagnostics = {
                enable = false;
            }
        }
    }
}
-- assembly
require'lspconfig'.asm_lsp.setup{}

-- gopls
require'lspconfig'.gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})

require'lspconfig'.lua_ls.setup{}

-- fixing the pop-up autocomplete
local cmp = require('cmp')
local cmp_actions = require("lsp-zero").cmp_action()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-k>'] =  cmp.mapping.select_prev_item(cmp_select),
		['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
		['<Tab>'] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.abort(),
	})
})


