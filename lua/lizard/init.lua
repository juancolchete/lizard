local Lizard = {}

function Lizard.open(...)
    buffer1 = vim.api.nvim_create_buf(false, true)
    window1 = vim.api.nvim_open_win(buffer1, true, {
        style="minimal", relative='editor',
        row=3, col=3, width=100, height=50, border='single'
    })
end


return Lizard

