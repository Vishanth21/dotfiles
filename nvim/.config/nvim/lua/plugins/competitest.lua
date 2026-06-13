return {
  "xeluxee/competitest.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>cr", "<cmd>CompetiTest run<cr>", desc = "Run CP Tests" },
    { "<leader>ca", "<cmd>CompetiTest add_testcase<cr>", desc = "Add CP Test" },
    { "<leader>rp", "<cmd>CompetiTest receive problem<cr>", desc = "Receive CP Problem" },
  },
  config = function()
    local function format_cf_name(task, file_extension, is_contest)
      local url = task.url or ""
      local contest, problem = string.match(url, "contest/(%d+)/problem/([%w]+)")

      if not contest then
        contest, problem = string.match(url, "problemset/problem/(%d+)/([%w]+)")
      end

      local filename
      if contest and problem then
        filename = contest .. problem .. "." .. file_extension
      else
        filename = string.gsub(task.name, "[^%w]", "") .. "." .. file_extension
      end

      if not is_contest then
        return vim.fn.getcwd() .. "/" .. filename
      end
      return filename
    end

    require("competitest").setup({
      template_file = {
        cpp = "~/.config/nvim/template.cpp",
      },
      evaluate_template_modifiers = true,
      compile_command = {
        cpp = { exec = "g++", args = { "-O3", "-Wall", "$(FNAME)", "-o", "a.out" } },
      },
      run_command = {
        cpp = { exec = "./a.out" },
      },
      testcases_use_single_file = true,
      received_problems_path = function(task, ext)
        return format_cf_name(task, ext, false)
      end,
      received_contests_problems_path = function(task, ext)
        return format_cf_name(task, ext, true)
      end,
      runner_ui = {
        viewer = {
          width = 0.5,
          height = 0.5,
          show_nu = true,
          open_when_compilation_fails = true,
        },
      },
    })
  end,
}
