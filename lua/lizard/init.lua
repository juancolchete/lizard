local Lizard = {}

function Lizard.open(...)
    buffer1 = vim.api.nvim_create_buf(false, true)
    buffer2 = [[
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
  ]]
    window1 = vim.api.nvim_open_win(buffer2, true, {
        style="minimal", relative='editor',
        row=3, col=50, width=50, height=25, border='single'
    })
   
end


return Lizard

