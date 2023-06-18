local Lizard = {}

local draw = 
[[              ____...---...___
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
function Lizard.open(...)
  print(draw)
  local buffer1 = vim.api.nvim_create_buf(false, true)
  for line in string.gmatch(draw, "\n") do
    vim.api.nvim_buf_set_lines(buffer1, 0, -1, true, {line})
  end
  vim.api.nvim_open_win(buffer1, true, {
    style="minimal", relative='editor',
    row=3, col=50, width=200, height=50, border='single'
  })
end



return Lizard

