return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "cssls",
          "emmet_ls",
          "dockerls",
          "eslint",
          "lua_ls",
          "html",
          "tsserver",
          "yamlls"
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require "lspconfig"
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      lspconfig.html.setup {}
      lspconfig.lua_ls.setup {}
      lspconfig.tsserver.setup {}
      lspconfig.cssls.setup {}
      lspconfig.dockerls.setup {}
      lspconfig.emmet_ls.setup {
        capabilities = capabilities,
      }
      lspconfig.yamlls.setup {}

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
