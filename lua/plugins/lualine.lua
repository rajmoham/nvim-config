return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        require('lualine').setup({
            options = {
                section_separators = '',
                components_separators = '',
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch',
                    {
                        'diagnostics',
                        sections = { 'error', 'warn'},
                        symbols = {
                            error = '🛑 ',
                            warn = '⚠️ '
                        }
                    }
                },
                lualine_c = {
                    {
                        'filename',
                        path = 2,
                        symbols = {
                            modified = '[MODIFIED]',
                            readonly = '[READ-ONLY]'
                        }
                    },
                },
                lualine_x = {
                    {
                        'encoding',
                        separator = ""
                    },
                    {
                        'fileformat',
                        symbols = {
                            unix = "[LF]",
                            dos = "[CRLF]",
                            mac = "[CR]"
                        }
                    },
                    'filetype'
                },
                lualine_y = {'progress'},
                lualine_z = {'location',}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {'filename'}
            },
            extensions = {'fzf', 'toggleterm'}
        })
    end,
}
