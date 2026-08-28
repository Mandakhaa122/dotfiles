require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<F5>", "<cmd>CompetiTest run<CR>", { desc = "Run Competitest cases" })
map("n", "<leader>ta", "<cmd>CompetiTest add_testcase<CR>", { desc = "Add Testcase" })
map({'n', 'v', 'o'}, 'j', 'k', { remap = false })
map({'n', 'v', 'o'}, 'k', 'j', { remap = false })
map("n", "<leader>td", "<cmd>CompetiTest delete_testcase<CR>", { desc = "Delete Testcase" })
map("n", "<leader>te", "<cmd>CompetiTest edit_testcase<CR>", { desc = "Edit Testcase" })
map("n", "<leader>tp", "<cmd>CompetiTest receive problem<CR>", { desc = "Receive Problem" })
map("n", "gx", function()
  local url = vim.fn.expand("<cfile>")
  if url ~= "" then
    local opener = vim.fn.has("mac") == 1 and "open" or "xdg-open"
    vim.fn.jobstart({ opener, url }, { detach = true })
  end
end, { desc = "Open URL under cursor in browser" })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
