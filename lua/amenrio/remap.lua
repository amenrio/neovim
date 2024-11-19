vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = 'Paste without overriding paste buffer [["_dP]]' })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = 'Yank to clipboard [["+y]]' })
-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = 'Clean delete [["_d]]' })
-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = 'Yank line to clipboard [["+Y]]' })

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tm<CR>")
--vim.keymap.set("n", "<leader>f", function()
--    vim.lsp.buf.format()
--end)

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set(
  "n",
  "<leader>rw",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Search & [R]eplace current [W]ord" }
)
vim.keymap.set(
  "n",
  "<leader>rc",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>]],
  { desc = "Search & [R]eplace current [W]ord with [C]onfirmation" }
)
