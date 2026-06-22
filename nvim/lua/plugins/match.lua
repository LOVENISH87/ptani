return {
  "ankushbhagats/match.nvim",
  config = function()
    require("match").setup({
      prefix = "",
      style = "minimal",
      border = "rounded",
      border_hl = "Function",
    })
  end,
  keys = {
    { "<C-f>", "<cmd>Match<cr>", desc = "Search with match.nvim", mode = "n" },
    { "<leader>h", "<cmd>MatchWord<cr>", desc = "Search & replace word under cursor", mode = "n" },
  },
}
