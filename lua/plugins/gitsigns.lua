return {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup{
                on_attach = function(bufnr)
                    local gitsigns = require('gitsigns')

                    local function map(mode, l, r, opts)
                        opts = opts or {}
                        opts.buffer = bufnr
                        vim.keymap.set(mode, l, r, opts)
                    end

                    map('n', '<leader>ha', function() gitsigns.setqflist('all') end)
                    map('n', '<leader>hl', function () gitsigns.blame_line({full = true}) end)
                    map('n', '<leader>hh', gitsigns.preview_hunk)
                    map('n', '<leader>hn', function() gitsigns.nav_hunk('next') end)
                    map('n', '<leader>hN', function() gitsigns.nav_hunk('prev') end)
                    map('n', '<leader>hd', gitsigns.diffthis)
                end
        }
    end
}
