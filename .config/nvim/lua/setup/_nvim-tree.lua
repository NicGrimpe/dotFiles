-- If plugin is not loaded (e.g. disabled), skip this file!
if not _G.plugin_loaded("nvim-tree.lua") then
  do return end
end

require("nvim-tree").setup {
    view = {
        side = left,
    },
}
