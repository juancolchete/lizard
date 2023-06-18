local Lizard = {}

function Lizard.open(...)
  buffer1 = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buffer1, 0, -1, true, {"abc", "def"})  
  window1 = vim.api.nvim_open_win(buffer1, true, {
    style="minimal", relative='editor',
    row=3, col=50, width=200, height=50, border='single'
  })
  
 
end



return Lizard

