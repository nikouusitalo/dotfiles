vim.g.mapleader = " "
--file manager
vim.keymap.set("n", "<leader>fm", vim.cmd.Ex)

--vscode visual modessa pytyy siirtämään
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
--faster move up and downi and keep cursor certer
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
--this is for search keep curser center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "ö", "<cmd>:bnext<CR>")
vim.keymap.set("n", "ä", "<cmd>:bprev<CR>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/core/lazy.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
vim.api.nvim_create_user_command(
  'Config',
  "e ~/.config/nvim/init.lua",
  {bang = true, desc = "Open init.lua Neovim config"}
)
vim.api.nvim_create_user_command(
  'Daily',
  "e ~/system/daily.txt",
  {bang = true, desc = "Open init.lua Neovim config"}
)
vim.api.nvim_create_user_command(
  'Weekly',
  "e ~/system/weekly.txt",
  {bang = true, desc = "Open init.lua Neovim config"}
)
vim.api.nvim_create_user_command(
  'Todo',
  "e ~/system/daily.txt",
  {bang = true, desc = "Open init.lua Neovim config"}
)

