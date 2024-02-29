local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
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
