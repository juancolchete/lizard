local Lizard = {}

function Lizard.open(...)
  local buffer1 = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buffer1, 0, -1, true, {[[              ____...---...___
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
jro]]})  
  local window1 = vim.api.nvim_open_win(buffer1, true, {
    style="minimal", relative='editor',
    row=3, col=50, width=100, height=30, border='single'
  })
  
 
end



return Lizard

