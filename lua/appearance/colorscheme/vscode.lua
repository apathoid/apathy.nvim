---@diagnostic disable: undefined-global

local ok, lush = pcall(require, 'lush')

if not ok then
    return
end


local base = require('appearance.colorscheme.base')
local vscode_base = require('appearance.colorscheme._vscode')

local theme = lush.extends({base, vscode_base}).with(function()
    return {
        Accent { fg = '#dcdcaa', bg = '#1b75b1', bg_sec = '#569cd6' },

        YankHighlight { fg = '#ffffff', bg = Accent.bg },

        TabLineBufferSelected { fg = '#ffffff', bg = Accent.bg },
        TabLineNumber { fg = '#ffffff' },
        TabLineSeparator { fg = '#cccccc' },
        TabLineIcon { fg = '#ffffff' },
        TabLineModified { fg = '#ffffff' },
        TabLineCloseButton { fg = '#ffffff' },
        TabLineCloseButtonHovered { fg = '#f14c4c' },
        TabLineCloseButtonSelectedHovered { fg = '#f14c4c' },
        TabLineTab { fg = '#cccccc', bg = '#1b1b1c' },
        TabLineTabSelected { fg = '#ffffff', bg = base.TabLineTabSelected.bg },

        StatusLine { fg = '#ffffff', bg = '#252526' },
        StatusLineFill { fg = '#ffffff', bg = '#454545' },
        StatusLineNormal { fg = '#ffffff', bg = '#007acc' },
        StatusLineInsert { fg = '#ffffff', bg = '#cc6633' },
        StatusLineVisual { fg = '#ffffff', bg = '#68217a' },
        StatusLineReplace { fg = '#ffffff', bg = '#c586c0' },
        StatusLineInactive { base.StatusLineInactive, bg = base.FileExplorerNormal.bg }
    }
end)


return theme
