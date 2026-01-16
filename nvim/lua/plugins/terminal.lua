return {
  {
    "akinsho/toggleterm.nvim",
    keys = function()
      return {
        -- Remove LazyVim's default <C-/> terminal toggle
        { "<C-_>", false },

        -- New terminal mapping: Ctrl + J
        {
          "<C-j>",
          function()
            require("toggleterm").toggle()
          end,
          mode = { "n", "t" },
          desc = "Toggle Terminal",
        },
      }
    end,
  },
}
