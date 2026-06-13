-- ~/.config/nvim/lua/plugins/emmet.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_ls = {
          cmd = { "emmet-language-server", "--stdio" },
          filetypes = { "html", "css", "scss" },
        },
      },
    },
  },
}
