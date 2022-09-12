local wk = require("which-key")

wk.register(
{
    t = {
        name = "Tree",
        t = { "<cmd>NvimTreeToggle<cr>", "Toggle tree" },
        f = { "<cmd>NvimTreeFocus<cr>", "Focus tree" },  
    },

    f = {
        name = "Telescope",
        f = {"<cmd>lua require('telescope.builtin').find_files()<cr>", "Find files"},
        g = {"<cmd>lua require('telescope.builtin').live_grep()<cr>", "Live grep"},
        p = {"<cmd>lua require'telescope.builtin'.planets{}<cr>", "Find planet"}
    }

}, 
{ prefix = "<leader>" }
)
