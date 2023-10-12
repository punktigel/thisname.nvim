
local M = {}

M.options = {
    variant = 'auto',

}

function M.extend(options)
    M.options = vim.tbl_deep_extend('force', M.options, options or {})
end


return M
