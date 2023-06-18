local Lizard = {}

function Lizard.open(...)
    buffer1 = vim.api.nvim_create_buf(false, true)
    window1 = vim.api.nvim_open_win(buffer1, true, {
        style="minimal", relative='editor',
        row=3, col=50, width=50, height=25, border='single'
    })
  vim.api.nvim_command(':e assets/lizard.txt')
end


return Lizard

