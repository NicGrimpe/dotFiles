vim.cmd [[packadd packer.nvim]]

local packer = require("packer")
local util = require("packer.util")

local function packer_spec()
  	local use = use;

  	use {"wbthomason/packer.nvim"}

	use {"kyazdani42/nvim-tree.lua", requires = {"kyazdani42/nvim-web-devicons"}}
	use {"folke/which-key.nvim"}
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = {'nvim-lua/plenary.nvim'}}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'folke/tokyonight.nvim'
    use 'neovim/nvim-lspconfig'
end

local compile_path = util.join_paths(
  vim.fn.stdpath("config"), "generated", "packer_compiled.vim"
)

packer.startup {
  packer_spec,
  config = {
    compile_path = compile_path,
  },
}

vim.cmd("source " .. compile_path)

function _G.plugin_loaded(plugin_name)
  local p = _G.packer_plugins
  return p ~= nil and p[plugin_name] ~= nil and p[plugin_name].loaded
end
