return {
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "pyright",
        "black",
        "ruff",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- load the plugin before saving
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        cpp = { "clang-format" }, -- Ensure clang-format is installed for C++
      },
      -- ADD THIS BLOCK:
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },
}
