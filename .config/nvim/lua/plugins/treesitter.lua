return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = {
          "lua",
          "typescript",
          "javascript",
          "bash",
          "c"
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
