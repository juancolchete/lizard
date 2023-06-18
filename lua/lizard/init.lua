local Lizard = {}

function Lizard.open(...)
  local buffer1 = vim.api.nvim_create_buf(false, true)
  print(os.getenv("PWD"))
  local f = io.open(os.getenv("PWD").."lizard.txt","r")
  local lines = f:read("*all")
  f:close()
  for line in lines do
    vim.api.nvim_buf_set_lines(buffer1, 0, -1, true, {line})
  end
  vim.api.nvim_open_win(buffer1, true, {
    style="minimal", relative='editor',
    row=3, col=50, width=200, height=50, border='single'
  })


end



return Lizard

