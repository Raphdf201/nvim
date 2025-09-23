return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      -- require("nvim-treesitter.configs").setup {
      --   ensure_installed = { "java" },
      --   highlight = { enable = true },
      -- }
    end
  },
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "nvim-java/nvim-java"
  },
}

