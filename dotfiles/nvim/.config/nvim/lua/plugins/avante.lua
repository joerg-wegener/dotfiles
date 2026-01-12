return {
  "yetone/avante.nvim",
  build = "make",
  event = "VeryLazy",
  version = false,
  opts = {
    instructions_file = "avante.md",
    provider = "ollamalocal",
    providers = {
      ollamalocal = {
        __inherited_from = "openai",
        api_key_name = "",
        endpoint = "http://127.0.0.1:1234/v1",
        model = "mistralai/ministral-3-3b",
        mode = "legacy",
        max_tokens = 4096,
        disable_tools = true,
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "echasnovski/mini.pick", -- for file_selector provider mini.pick
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "stevearc/dressing.nvim", -- for input provider dressing
    "folke/snacks.nvim", -- for input provider snacks
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
  },
}
