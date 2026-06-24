vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "off",
        diagnosticMode = "openFilesOnly",
      },
    },
  },
})
vim.lsp.enable("basedpyright")
vim.lsp.enable("ts_ls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("bashls")
