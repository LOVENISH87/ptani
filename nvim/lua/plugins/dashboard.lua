return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      local logo = [[
      ██╗     ███████╗███████╗██████╗ ██╗ █████╗ ███╗   ██╗
      ██║     ██╔════╝██╔════╝██╔══██╗██║██╔══██╗████╗  ██║
      ██║     █████╗  ███████╗██████╔╝██║███████║██╔██╗ ██║
      ██║     ██╔══╝  ╚════██║██╔══██╗██║██╔══██║██║╚██╗██║
      ███████╗███████╗███████║██████╔╝██║██║  ██║██║ ╚████║
      ╚══════╝╚══════╝╚══════╝╚═════╝ ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
        },
      }
      return opts
    end,
  },
}
