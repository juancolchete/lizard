local Lizard = {}

function Lizard.open(...)
    buffer1 = vim.api.nvim_create_buf(false, true)
    window1 = vim.api.nvim_open_win(buffer1, true, {
        style="minimal", relative='editor',
        row=3, col=50, width=200, height=50, border='single'
    })
  vim.api.nvim_out_write([[
                ____...---...___
___.....---"""        .       ""--..____
     .                  .            .
 .             _.--._       /|
        .    .'()..()`.    / /
            ( `-.__.-' )  ( (    .
   .         \        /    \ \
       .      \      /      ) )        .
            .' -.__.- `.-.-'_.'
 .        .'  /-____-\  `.-'       .
          \  /-.____.-\  /-.
           \ \`-.__.-'/ /\|\|           .
          .'  `.    .'  `.
          |/\/\|    |/\/\|
]])
end


return Lizard

