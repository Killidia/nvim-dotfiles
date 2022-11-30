local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd

-- autocmds to detect indent
autocmd("FileType", {
  pattern = { "php" },
  callback = function()
    opt.shiftwidth = 4
    opt.tabstop = 4
    opt.softtabstop = 4
  end,
})

autocmd("FileType", {
  pattern = { "javascript", "html", "json" },
  callback = function()
    opt.shiftwidth = 2
    opt.tabstop = 2
    opt.softtabstop = 2
  end,
})
