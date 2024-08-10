require "config.packer"
require "config.remap"
require "config.set"

require "plugin.lsp"
require "plugin.mason"
require "plugin.autoclose"
require "plugin.packer_compiled"
require "plugin.telescope"
require("telescope").load_extension("noice")
require "plugin.treesitter"
require "plugin.noice"
require "plugin.lualine"
-- require "plugin.alpha"


vim.opt.swapfile = false
vim.cmd "colorscheme flexoki-dark"
