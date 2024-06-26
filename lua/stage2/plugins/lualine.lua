return {
    'hoob3rt/lualine.nvim',
    dependencies = {
        'kyazdani42/nvim-web-devicons'
    },
    config = function()
        local lualine = require('lualine')
        local theme = apth.utils.methods.get_theme()

        local lualine_theme = {
            normal = {
                a = { fg = theme.StatusLineNormal.fg, bg = theme.StatusLineNormal.bg },
                b = { fg = theme.StatusLineFill.fg, bg = theme.StatusLineFill.bg },
                c = { fg = theme.StatusLine.fg, bg = theme.StatusLine.bg }
            },
            insert = { a = { fg = theme.StatusLineInsert.fg, bg = theme.StatusLineInsert.bg }},
            visual = { a = { fg = theme.StatusLineVisual.fg, bg = theme.StatusLineVisual.bg }},
            replace = { a = { fg = theme.StatusLineReplace.fg, bg = theme.StatusLineReplace.bg }},
            inactive = {
                a = { fg = theme.StatusLineInactive.fg, bg = theme.StatusLineInactive.bg },
                b = { fg = theme.StatusLineInactive.fg, bg = theme.StatusLineInactive.bg },
                c = { fg = theme.StatusLineInactive.fg, bg = theme.StatusLineInactive.bg }
            }
        }

        lualine.setup {
            options = {
                globalstatus = true,
                theme = lualine_theme,
                disabled_filetypes = {}
            },
            extensions = { 'mason', 'toggleterm', 'trouble' }
        }
    end
}
