local Lizard = {}

local drawRaw = 
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
  local buffer1 = vim.api.nvim_create_buf(false, true) 
  vim.api.nvim_open_win(buffer1, true, {
    style="minimal", relative='editor',
    row=3, col=50, width=40, height=16, border='single'
  })
  for str in string.gmatch(drawRaw, "([^\n]+)") do
   vim.api.nvim_buf_set_lines(buffer1, -1, -1, true, {str})
  end
end



return Lizard

