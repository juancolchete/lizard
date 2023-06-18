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

function str_split (inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
end

function Lizard.open(...)
  local buffer1 = vim.api.nvim_create_buf(false, true)
  local draw = str_split(drawRaw,"\n")
  print(draw)
  for line in draw do
    print(line)
    --vim.api.nvim_buf_set_lines(buffer1, 0, -1, true, {line})
  end
  --vim.api.nvim_open_win(buffer1, true, {
  --  style="minimal", relative='editor',
  --  row=3, col=50, width=200, height=50, border='single'
  --})
end



return Lizard

