-- If plugin is not loaded (e.g. disabled), skip this file!
if not _G.plugin_loaded("which-key.nvim") then
  do return end
end

require("which-key").setup {
}
