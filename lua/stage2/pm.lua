local M = {}


function M.setup()
    -- Bootstrap plugin manager
    M.bootstrap()

    -- Initialize plugin manager
    M.init()
end

function M.bootstrap()
    local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

    if not (vim.uv or vim.loop).fs_stat(lazypath) then
        vim.fn.system({
            'git',
            'clone',
            '--filter=blob:none',
            'https://github.com/folke/lazy.nvim.git',
            '--branch=stable', -- latest stable release
            lazypath
        })
    end

    vim.opt.rtp:prepend(lazypath)
end

function M.init()
    require('lazy').setup('stage2.plugins', {
        change_detection = {
            enabled = false
        }
    })
end


return M
