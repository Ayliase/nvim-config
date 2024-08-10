-- leader key
vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>e", ":Ex<CR>")
vim.keymap.set("n", "<leader>s", ":w<CR>")

-- multi pane operations
vim.keymap.set("n", "<leader>wh", ":split<CR>")
vim.keymap.set("n", "<leader>wv", ":vs<CR>")
vim.keymap.set("n", "<leader>ww", ":wincmd w<CR>")
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>")
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>")
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>q", ":close<CR>")
vim.keymap.set("n", "<leader>Q", ":only<CR>")

vim.keymap.set("n", "<Tab>", ":tabNext<CR>")
vim.keymap.set("n", "<C-q>", ":tabclose<CR>")
vim.keymap.set("n", "<leader><tab>", ":tabnew<CR>")

-- clipboard yanking
-- vim.api.nvim_set_keymap("n", "y", '"+y', { noremap = true, silent = true });
-- vim.api.nvim_set_keymap("n", "yy", '"+y', { noremap = true, silent = true });
-- vim.api.nvim_set_keymap("v", "y", '"+y', { noremap = true, silent = true });

-- Yank to clipboard by default
vim.api.nvim_set_keymap('n', 'y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true, silent = true })

-- Optional: Also map yy to copy the entire line to clipboard
vim.api.nvim_set_keymap('n', 'yy', '"+yy', { noremap = true, silent = true })

local function show_file_type()
    local file_type = vim.bo.filetype
    print("File type: " .. file_type)
end

local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})

vim.api.nvim_set_keymap("n", "<leader>c", "gcc", {noremap = true, silent = true});
vim.api.nvim_set_keymap("v", "<leader>c", "gc", {noremap = true, silent = true});
