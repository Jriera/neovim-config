return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require "which-key"
    wk.setup {
      show_help = true,
      plugins = { spelling = true, registers = true},
      key_labels = { ["<leader>"] = "SPC" },
      triggers = "auto",
    }
    wk.register({
      w = { "<cmd>update!<CR>", "Save" },
      q = { "<cmd>lua require('utils').smart_quit()<CR>", "Quit" },
      f = { name = "+File" },
      g = { name = "+Git" },
      c = {
        name = "+Code",
        x = {
          name = "Swap Next",
          f = "Function",
          p = "Parameter",
          c = "Class",
        },
        X = {
          name = "Swap Previous",
          f = "Function",
          p = "Parameter",
          c = "Class",
        },
      },
      e = {"<cmd>NvimTreeToggle<cr>", "explorer"},
      gs = { "<cmd>Git<cr>", "git" },
    }, { prefix = "<leader>" })
  end,
}
