return {
  {
    "catppuccin/nvim",
    opts = {
      custom_highlights = function(colors)
        return {
          -- brighter overlay color for comments
          Comment = { fg = colors.overlay2, style = { "italic" } },
        }
      end,
    },
  },
}
