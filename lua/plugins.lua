return {
  -- Treesitter for highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "java" },
        highlight = { enable = true },
      }
    end
  },

  -- LSP for Java
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
  },
  {
    "mason-org/mason.nvim",
    opts = {}
  },
}

