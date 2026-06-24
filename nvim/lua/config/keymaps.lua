local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files,
  { desc = "Find Files" })

vim.keymap.set("n", "<leader>fg", builtin.live_grep,
  { desc = "Live Grep Project" })

vim.keymap.set("n", "<leader>fb", builtin.buffers,
  { desc = "Buffers" })

vim.keymap.set("n", "<leader>fh", builtin.help_tags,
  { desc = "Help Tags" })

vim.keymap.set("n", "<leader>fr", builtin.oldfiles,
  { desc = "Recent Files" })

vim.keymap.set("n", "<leader>fc", builtin.current_buffer_fuzzy_find,
  { desc = "Current Buffer Search" })


vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>",
  { desc = "Explorer" })


vim.keymap.set("n", "gd", vim.lsp.buf.definition,
  { desc = "Goto Definition" })

vim.keymap.set("n", "gr", vim.lsp.buf.references,
  { desc = "References" })

vim.keymap.set("n", "gi", vim.lsp.buf.implementation,
  { desc = "Implementation" })

vim.keymap.set("n", "gt", vim.lsp.buf.type_definition,
  { desc = "Type Definition" })

vim.keymap.set("n", "K", vim.lsp.buf.hover,
  { desc = "Hover" })

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,
  { desc = "Rename Symbol" })

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,
  { desc = "Code Action" })

vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float,
  { desc = "Line Diagnostic" })

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev,
  { desc = "Prev Diagnostic" })

vim.keymap.set("n", "]d", vim.diagnostic.goto_next,
  { desc = "Next Diagnostic" })

vim.keymap.set("n", "<C-h>", "<C-w>h",
  { desc = "Window Left" })

vim.keymap.set("n", "<C-j>", "<C-w>j",
  { desc = "Window Down" })

vim.keymap.set("n", "<C-k>", "<C-w>k",
  { desc = "Window Up" })

vim.keymap.set("n", "<C-l>", "<C-w>l",
  { desc = "Window Right" })

vim.keymap.set("n", "<S-h>", ":bprevious<CR>",
  { desc = "Previous Buffer" })

vim.keymap.set("n", "<S-l>", ":bnext<CR>",
  { desc = "Next Buffer" })

vim.keymap.set("n", "<leader>bd", ":bd<CR>",
  { desc = "Delete Buffer" })


vim.keymap.set("n", "<leader>w", ":w<CR>",
  { desc = "Save" })

vim.keymap.set("n", "<leader>q", ":q<CR>",
  { desc = "Quit" })

vim.keymap.set("n", "<leader>x", ":x<CR>",
  { desc = "Save & Quit" })

vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>",
  { desc = "Clear Search Highlight" })



vim.keymap.set("n", "<leader>fm", function()
  local ft = vim.bo.filetype

  if ft == "python" then
    vim.fn.system({ "ruff", "format", vim.fn.expand("%") })
  elseif ft == "typescript" or ft == "javascript" then
    vim.fn.system({ "deno", "fmt", vim.fn.expand("%") })
  end

  vim.cmd("edit")
end, { desc = "Format file" })
