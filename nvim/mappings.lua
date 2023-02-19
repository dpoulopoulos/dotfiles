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

    ["<leader>db"] = { "<cmd> DapContinue <CR>", "start the debugger" },
    ["<leader>br"] = { "<cmd> DapToggleBreakpoint <CR>", "toggle breakpoint" }
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

return M
