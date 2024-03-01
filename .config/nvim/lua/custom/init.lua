local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd
-------------------------------------------

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.scrolloff = 10
-- opt.relativenumber = true

autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.colorcolumn = "100"
  end,
})

autocmd("FileType", {
  pattern = "rst",
  callback = function()
    vim.opt_local.colorcolumn = "100"
  end,
})

autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.colorcolumn = "79"
  end,
})


