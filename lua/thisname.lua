local config = require('thisname.config')
local M = {}


function M.set_colorscheme(variant)
    config.extend({variant = variant})
    vim.opt.termguicolors = true

    if vim.g.colors_name then
        vim.cmd('hi clear')
        vim.cmd('syntax reset')
    end

    -- set colorscheme name
    vim.g.colors_name = 'thisname'

    require('thisname.set_theme')._load()
end

function M.setup(options)
    config.extend(options)
end

return M
