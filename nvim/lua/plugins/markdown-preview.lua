return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.g.mkdp_port = "8864"
    vim.g.mkdp_open_to_the_world = 1
    vim.g.mkdp_browser = "wslview"
  end,
  ft = { "markdown" },
}
