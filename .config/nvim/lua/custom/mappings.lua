local M = {}

M.mason = {
  plugin = true,
  n ={
    ["<leader>dd"] = { "<cmd> DapContinue <CR>", "start the debugger" },
    ["<leader>pp"] = { "<cmd> DapToggleBreakpoint <CR>", "toggle breakpoint" }
  }
}

require("core.utils").load_mappings("mason")

return M
