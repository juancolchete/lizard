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

local function str_split(str, sep)
    local sep, res = sep or '%s', {}
    string.gsub(str, '[^'..sep..']+', function(x) res[#res+1] = x end)
    return res 
end

function Lizard.open(...)
  local buffer1 = vim.api.nvim_create_buf(false, true)
  draw = str_split(draw,"\n")
  for line in string.gmatch(draw, "\n") do
    print(line)
    --vim.api.nvim_buf_set_lines(buffer1, 0, -1, true, {line})
  end
  --vim.api.nvim_open_win(buffer1, true, {
  --  style="minimal", relative='editor',
  --  row=3, col=50, width=200, height=50, border='single'
  --})
end



return Lizard

