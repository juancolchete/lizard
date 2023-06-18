local draw = require("lizard.draw")
local Lizard = {}

function Lizard.open(...)
  local buffer1 = vim.api.nvim_create_buf(false, true)
  for line in draw do
    vim.api.nvim_buf_set_lines(buffer1, 0, -1, true, {line})
  end
  vim.api.nvim_open_win(buffer1, true, {
    style="minimal", relative='editor',
    row=3, col=50, width=200, height=50, border='single'
  })
end



return Lizard

