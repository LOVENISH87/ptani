return {
  -- === User-requested "cool plugins" ===

  -- Auto-pairs: automatically close brackets, quotes, etc.
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
  },

  -- Comment.nvim: gc to comment/uncomment lines/blocks
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    opts = {
      mappings = {
        basic = true,
        extra = true,
      },
    },
    keys = {
      { "<C-/>", "<Plug>(comment_toggle_linewise_current)", mode = { "n", "v" }, desc = "Toggle comment" },
      { "<C-/>", "<Plug>(comment_toggle_linewise_visual)", mode = { "v" }, desc = "Toggle comment" },
    },
  },

  -- Surround.nvim: ys to add surroundings, ds to delete, cs to change
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {
      -- Configuration here, or leave empty to use defaults
    }
  },

  -- Which-key: shows available keybinds in a popup
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },

  -- Bufferline: shows buffers as tabs at the top
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        mode = "tabs",
        -- separator_style = "slant" | "padded_slant" | "thick" | "thin" | { 'any', 'any' },
        -- offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "left", padding = 1 } },
      }
    }
  },

  -- Nvim-tree: file explorer
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    }
  },

  -- Toggleterm: floating terminals
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      -- examples
      open_mapping = [[<c-\>]], -- or {'<c-\>', '<c-`>'} if you also want <C-`> to open terminal
      hide_numbers = true, -- hide the number column in toggleterm buffers
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2, -- the degree by which to darken to terminal shade, default: 1 for dark backgrounds, 3 for light
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      persist_size = true,
      direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
      close_on_exit = true, -- close the terminal window when the process exits
      shell = vim.o.shell, -- change the default shell
      -- This field is only relevant if direction is set to 'float'
      float_opts = {
        -- The border key is *almost* the same as 'border' in nvim_open_win
        -- see :h nvim_open_win for details on borders however
        -- the 'sc' and 'tc' values can be used instead of 'none' to set the border color
        -- to the terminal's background color
        border = "curved",
        winblend = 3,
        highlights = {
          border = "Normal",
          background = "Normal",
        }
      }
    },
  },

  -- Nvim-notify: prettier notification system
  {
    "rcarriga/nvim-notify",
    opts = {
      -- Animation style (see :h nvim-notify.setup())
      stages = "slide",
      -- Default timeout for notifications
      timeout = 3000,
      -- For stages that change opacity this is the minimum
      -- and maximum opacity value. Consider changing this to 0.01
      -- for better visibility
      background_colour = "#000000",
      -- Minimum width for notification windows
      minimum_width = 50,
      -- Icons for the different levels
      icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
      },
    },
    config = function(_, opts)
      require("notify").setup(opts)
      -- use notify as the vim.notify (which you can still call with :echo)
      vim.notify = require("notify")
    end,
  },

  -- === More cool plugins ===

  -- Gitsigns: shows git changes in the gutter
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    opts = {
      signs = {
        add          = { text = "┃" },
        change       = { text = "┃" },
        delete       = { text = "_" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
        untracked    = { text = "┆" },
      },
      signs_staged = {
        add          = { text = "┃" },
        change       = { text = "┃" },
        delete       = { text = "_" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
        untracked    = { text = "┆" },
      },
      signs_staged_enable = true,
      signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
      numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
      linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
      word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
      watch_gitdir = {
        follow_files = true,
      },
      auto_attach = true,
      attach_to_untracked = false,
      current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
      },
      current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil, -- Use default
      max_file_length = 40000, -- Disable if file is longer than this (in lines)
      preview_config = {
        -- Options passed to nvim_win_open
        border = "single",
        style = "minimal",
        relative = "cursor",
        row = 0,
        col = 1,
      },
    },
  },


  -- -- Indent-blankline: sleek scope-guided indent
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   main = "ibl",
  --   opts = {
  --     indent = {
  --       char = "│",
  --       highlight = "Comment",
  --     },
  --     scope = {
  --       enabled = true,
  --       show_start = true,
  --       show_end = true,
  --       highlight = "Function",
  --       include = { node_type = { "function", "if", "for", "while", "do", "class", "struct", "namespace" } },
  --     },
  --   },
  -- },

  -- Noice: enhances cmdline, popup, and messages
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    opts = {
      lsp = {
        enabled = false, -- Disable LSP integration to prevent scheme errors
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    },
  },

  -- === LazyVim extras you might find useful (commented out) ===
  -- To enable any of these, uncomment the lines below

  -- {
  --   "import = lazyvim.plugins.extras.ui.active-indent-line",
  -- },
  -- {
  --   "import = lazyvim.plugins.extras.ui.mini-animate",
  -- },
  -- {
  --   "import = lazyvim.plugins.extras.lang.go",
  -- },
  -- {
  --   "import = lazyvim.plugins.extras.lang.rust",
  -- },
  -- {
  --   "import = lazyvim.plugins.extras.dap.core",
  -- },
  -- {
  --   "import = lazyvim.plugins.extras.test.core",
  -- },
  -- {
  --   "import = lazyvim.plugins.extras.coding.yanky",
  -- },
}