return {
  -- other plugins …

  {
    "kawre/leetcode.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("leetcode").setup({
        -- your options here
      })
    end,
  },

  -- other plugins …
}
