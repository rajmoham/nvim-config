
return {
    enabled = false, -- There is a delay with this plugin for the moment so not using for now
    'karb94/neoscroll.nvim',
    config = function()
        local neoscroll = require('neoscroll')
        neoscroll.setup({
            -- easing = "quadratic"
        })
        local keymap = {
                ["<C-u>>"] = function() neoscroll.ctrl_u({ duration = 350 }) end;
                ["<C-d>>"] = function() neoscroll.ctrl_d({ duration = 350 }) end;
                ["<C-b>>"] = function() neoscroll.ctrl_b({ duration = 350 }) end;
                ["<C-f>>"] = function() neoscroll.ctrl_f({ duration = 350 }) end;
        }
        local modes = { 'n', 'v', 'x' }

        for key, func in pairs(keymap) do
            vim.keymap.set(modes, key, func)
        end
    end
}

