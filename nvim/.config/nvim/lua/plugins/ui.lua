return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No Information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },

  -- animations
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },

  -- BufferLine
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        -- globalstatus = false,
        theme = "onenord",
      },
    },
  },

  -- filename
  {
    "b0o/incline.nvim",
    dependencies = { "rmehri01/onenord.nvim" },
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local colors = require("onenord.colors.onenord")
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = {
              guibg = colors.gray,
              guifg = colors.green,
            },
            InclineNormalNC = {
              guibg = colors.purple,
              guifg = colors.red,
            },
          },
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        hide = { cursorline = true },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+]" .. filename
          end

          local icon, color = require("nvim-web-devicon").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },

  -- logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      --       local logo =
      --         [[   ▄████████ ███▄▄▄▄       ███      ▄██████▄  ███▄▄▄▄    ▄█   ▄██████▄  ███    █▄     ▄████████
      --   ███    ███ ███▀▀▀██▄ ▀█████████▄ ███    ███ ███▀▀▀██▄ ███  ███    ███ ███    ███   ███    ███
      --   ███    ███ ███   ███    ▀███▀▀██ ███    ███ ███   ███ ███▌ ███    ███ ███    ███   ███    █▀
      --   ███    ███ ███   ███     ███   ▀ ███    ███ ███   ███ ███▌ ███    ███ ███    ███   ███
      -- ▀███████████ ███   ███     ███     ███    ███ ███   ███ ███▌ ███    ███ ███    ███ ▀███████████
      --   ███    ███ ███   ███     ███     ███    ███ ███   ███ ███  ███    ███ ███    ███          ███
      --   ███    ███ ███   ███     ███     ███    ███ ███   ███ ███  ███    ███ ███    ███    ▄█    ███
      --   ███    █▀   ▀█   █▀     ▄████▀    ▀██████▀   ▀█   █▀  █▀    ▀██████▀  ████████▀   ▄████████▀
      --                                                                                                 ]]
      --
      local logo = [[ _________  ________  ________       ___    ___ 
|\___   ___\\   __  \|\   ___  \    |\  \  /  /|
\|___ \  \_\ \  \|\  \ \  \\ \  \   \ \  \/  / /
     \ \  \ \ \  \\\  \ \  \\ \  \   \ \    / / 
      \ \  \ \ \  \\\  \ \  \\ \  \   \/  /  /  
       \ \__\ \ \_______\ \__\\ \__\__/  / /    
        \|__|  \|_______|\|__| \|__|\___/ /     
                                   \|___|/      
                                                
                                                ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
