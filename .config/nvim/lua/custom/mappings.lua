local M = {}

M.general = {
  n = {
    ["<M-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<M-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<M-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<M-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
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
