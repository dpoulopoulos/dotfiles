local plugins = {
  {"github/copilot.vim"},
  {"preservim/tagbar"},
  {
    "rcarriga/nvim-dap-ui",
     event = "BufRead",
     dependencies = {
      "mfussenegger/nvim-dap",
      config = function ()
        require 'custom.configs.dap'
      end
    },
    enabled = vim.fn.has "win32" == 0,
    config = function()
      require "custom.configs.dapui"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- dev
        "c",
        "cpp",
        "python",
        "go",
        "hcl",

        -- config
        "json",
        "yaml",
      }
    }
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "terraform-ls",
        "clangd",
        "dockerfile-language-server",
        "yaml-language-server",
        "lua-language-server",
        "debugpy",
        "flake8",
        "prettier",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}

return plugins
