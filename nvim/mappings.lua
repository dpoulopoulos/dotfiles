local M = {}

M.disabled = {
  n = {
    ["<C-h>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    ["<C-l>"] = ""
  }
}

M.navigation = {
  n = {
    ["j"] = { "h", "Move left" },
    [";"] = { "l", "Move right" },
    ["k"] = { "j", "Move down" },
    ["l"] = { "k", "Move up" },

    ["<A-j>"] = { "<C-w>h", "window left" },
    ["<A-;>"] = { "<C-w>l", "window right" },
    ["<A-k>"] = { "<C-w>j", "window down" },
    ["<A-l>"] = { "<C-w>k", "window up" },
  },
  i = {
    ["<A-j>"] = { "<Left>", "move left" },
    ["<A-;>"] = { "<Right>", "move right" },
    ["<A-k>"] = { "<Down>", "move down" },
    ["<A-l>"] = { "<Up>", "move up" },
  },
  t = {
    ["<A-j>"] = { "<C-w>h", "window left" },
    ["<A-;>"] = { "<C-w>l", "window right" },
    ["<A-k>"] = { "<C-w>j", "window down" },
    ["<A-l>"] = { "<C-w>k", "window up" },
  },
  v = {
    ["j"] = { "h", "Move left" },
    [";"] = { "l", "Move right" },
    ["k"] = { "j", "Move down" },
    ["l"] = { "k", "Move up" },
  },
}

M.mason = {
  plugin = true,
  n ={
    ["<leader>dd"] = { "<cmd> DapContinue <CR>", "start the debugger" },
    ["<leader>pp"] = { "<cmd> DapToggleBreakpoint <CR>", "toggle breakpoint" }
  }
}

require("core.utils").load_mappings("mason")

return M
