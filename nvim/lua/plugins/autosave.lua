return {
  "Pocco81/auto-save.nvim",
  opts = {
    enabled = true, -- start auto-save when the plugin is loaded
    execution_message = {
      message = function() return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S")) end,
      dim = 0.18, -- dim the color of the message
      cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying message
    },
    trigger_events = { "InsertLeave", "TextChanged" }, -- save when leaving insert mode or changing text
    -- 1ms is technically possible but 1000ms is recommended
    debounce_delay = 1, 
    condition = function(buf)
      local fn = vim.fn
      local utils = require("auto-save.utils.data")

      if fn.getbufvar(buf, "&modifiable") == 1 and
          utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
        return true -- met condition, save
      end
      return false -- can't save
    end,
  },
}
