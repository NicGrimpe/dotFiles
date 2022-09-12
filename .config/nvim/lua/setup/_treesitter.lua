require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "go", "rust" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
}
