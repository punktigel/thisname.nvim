local options = require('thisname.config').options

local variants = {
    light = {
        bg = '#ededed',
        fg = '#111111',

        bg_light = '#cccccc',
        bg_dark = '#999999',

        black = '#000000',
        white = '#ffffff',

        gray = '#757575',
        gray_dark = '#b5b5b5',

        green_blue = '#32bf9f',

        purple = '#eb34d5',
        purple_dark = '#b327a2',

        blue_light = '#98b0d9',
        blue = '#3d71cc',

        red = '#eb4667',

        orange = '#ebb146',
        orange_dark = '#bf9d5a',

        d_red = '#eb4667',
        d_orange = '#ebc66f',
        d_green = '#489968',
    },

    dark = {
        bg = '#232733',
        fg = '#ffffff',

        bg_light = '#353a4d',
        bg_dark = '#1c1d26',

        black = '#000000',
        white = '#ffffff',

        gray = '#b5b5b5',
        gray_dark = '#757575',

        green_blue = '#3adeb8',

        purple = '#eb34d5',
        purple_dark = '#b327a2',

        blue_light = '#b3ceff',
        blue = '#3d71cc',

        red = '#eb4667',

        orange = '#ebb146',
        orange_dark = '#bf9d5a',

        d_red = '#eb4667',
        d_orange = '#ebc66f',
        d_green = '#489968',

    },

    dark_blue = {
        bg = '#1E1733',
        fg = '#ffffff',

        gray = '#b5b5b5',
        green_blue = '#3adeb8',

        red = '#e61732',
        orange = '#e68517'
    },

    dark_red = {
        bg = '#331d17',
        fg = '#ffffff',

        gray = '#b5b5b5',
        green_blue = '#3adeb8',

        red = '#e61732',
        orange = '#e68517'
    },
}

print('VARIANT: ' .. options.variant)


if variants[options.variant] ~= nil then
    return variants[options.variant]
end

print('VARIANT NOT FOUND')

return vim.o.background == 'light' and variants.light or variants.dark
