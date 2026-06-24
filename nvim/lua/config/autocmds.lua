local group = vim.api.nvim_create_augroup("FormatOnSave", {})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = group,
  pattern = "*.py",
  callback = function()
    vim.fn.system({
      "ruff",
      "format",
      vim.fn.expand("%")
    })
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = group,
  pattern = {
    "*.ts",
    "*.tsx",
    "*.js",
    "*.jsx",
  },
  callback = function()
    vim.fn.system({
      "deno",
      "fmt",
      vim.fn.expand("%")
    })
  end,
})
