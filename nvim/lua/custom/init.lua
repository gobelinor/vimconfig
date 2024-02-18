-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.cmd([[
nnoremap <silent> <C-Left> :wincmd h<CR>
nnoremap <silent> <C-Right> :wincmd l<CR>
nnoremap <silent> <C-Up> :wincmd k<CR>
nnoremap <silent> <C-Down> :wincmd j<CR>
]])


-- Redimensionner les fenêtres avec Ctrl + Shift + flèches directionnelles
vim.api.nvim_set_keymap('n', '<C-S-Up>', ':resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-Down>', ':resize -5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-Left>', ':vertical resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-Right>', ':vertical resize -5<CR>', { noremap = true, silent = true })


-- Open nvim-tree on startup
local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
