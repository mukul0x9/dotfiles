return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("kanagawa-dragon")
    end,
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "folke/tokyonight.nvim" },

}
