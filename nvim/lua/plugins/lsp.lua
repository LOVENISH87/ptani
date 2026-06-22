return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Disable auto-formatting to prevent LSP scheme errors
      opts.autoformat = false
      
      -- Override setup for servers that might cause issues
      opts.servers = opts.servers or {}
      
      -- Disable problematic servers
      opts.servers.jdtls = nil
      opts.servers.kotlin_language_server = nil
      
      return opts
    end,
  },
}
