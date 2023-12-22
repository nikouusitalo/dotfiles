---vim.cmd("colorscheme rose-pine"
--vim.o.background = "dark" -- or "light" for light mode
--vim.cmd([[colorscheme gruvbox]])
--vim.cmd([[colorscheme gruvbox]]
vim.api.nvim_set_hl(0, 'FloatBorder', {bg='#3B4252', fg='#5E81AC'})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#3B4252'})
vim.cmd [[ hi Pmenu guibg=#191e29 ]]
vim.cmd [[ hi PmenuSel guibg=#2f394f ]]
vim.cmd([[highlight EndOfBuffer  ctermbg=white]])
