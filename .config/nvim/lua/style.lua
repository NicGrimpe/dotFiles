vim.cmd[[colorscheme tokyonight]]

vim.api.nvim_command('autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab')

local set = vim.opt
set.tabstop = 4     
set.shiftwidth = 4   
set.softtabstop = 4  
set.expandtab = true      
