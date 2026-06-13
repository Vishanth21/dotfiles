-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)

-- Automatically move cursor to solve() and start insert mode for new CP files
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*.cpp",
  callback = function()
    -- Search for the anchor comment
    local row = 0
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    for i, line in ipairs(lines) do
      if line:find("// CURSOR HERE") then
        row = i
        -- Optional: Clear the anchor text
        vim.api.nvim_buf_set_lines(0, i - 1, i, false, { "    " })
        break
      end
    end

    if row > 0 then
      -- Move cursor to the row and 4th column (indentation)
      vim.api.nvim_win_set_cursor(0, { row, 4 })
      -- Enter insert mode automatically
      vim.cmd("startinsert!")
    end
  end,
})

vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
  desc = "Auto-save on focus lost or buffer leave",
  callback = function()
    -- Only save if the buffer is modified, has a file name, and is a normal file
    if vim.bo.modified and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
      vim.cmd("silent! update")
      vim.api.nvim_echo({ { "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"), "NonText" } }, false, {})
    end
  end,
})

vim.keymap.set("n", "<leader>cp", "<cmd>CPSubmit<cr>", { desc = "Submit CP Problem" })
