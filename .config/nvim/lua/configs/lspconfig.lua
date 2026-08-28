require("nvchad.configs.lspconfig").defaults()

-- Neovim 0.11+ Native LSP Setup
vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--function-arg-placeholders",
    "-j=4",
  },
})

vim.lsp.enable("clangd")
