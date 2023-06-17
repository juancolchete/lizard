local M = {}

function M.setup()
    -- Define the command
    vim.cmd([[command! -nargs=* Lizard lua require('myplugin').execute_lizard(<f-args>)]])

    -- Define the function to be executed
    function M.execute_lizard(args)
        print("Executing Lizard command with arguments:", args)
        -- Your custom logic here
    end
end

return M

