return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      html = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },

      c = { "clang-format" },
      cpp = { "clang-format" },
      python = { "isort", "black" },
    },
    format_on_save = {
      lsp_fallback = true,
      async = false,
      timeout_ms = 500,
    },
  },
  keys = {
    {
      "<leader>fmt",
      function()
        require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 500 })
      end,
      mode = { "n", "v" },
      desc = "Format file or range",
    },
  },
}
