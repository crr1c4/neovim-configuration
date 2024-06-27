return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim"

  },
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    });

    require("mason-lspconfig").setup({
      ensure_installed = {
        "hls", "denols", "clangd", "rust_analyzer", "lua_ls", "tailwindcss", "html", "cssls", "pyright", "marksman"-- LSP
        -- "codelldb", "js-debug-adapter" -- DAP
        -- "codelldb", "js-debug-adapter", "haskell-debug-adapter"
        -- "hls", "denols", "clangd", "rust_analyzer", "cssls", "html", "lua_ls", "tailwindcss"
      },
      automatic_installation = true
    })
  end
}
