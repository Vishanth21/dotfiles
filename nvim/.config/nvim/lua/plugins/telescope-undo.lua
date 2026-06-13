return {
  "debugloop/telescope-undo.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  keys = {
    { "<leader>su", "<cmd>Telescope undo<cr>", desc = "Search Undo History" },
  },
  config = function()
    require("telescope").load_extension("undo")
  end,
}
