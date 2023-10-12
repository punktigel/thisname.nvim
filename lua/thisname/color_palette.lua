local options = require('thisname.config').options

local variants = {
    light = {
        bg = '#ffffff',
        fg = '#111111',

        red = '#e61732',
        orange = '#e68517'
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
        green_blue_light = '#42ffd4',
        -- green_blue_dark = '#32bf9f',
        -- g_green_blue= '#3ade8f',

        purple = '#eb34d5',
        purple_dark = '#b327a2',

        blue_light = '#b3ceff',
        blue = '#3d71cc',
        blue_dark = '#2e5499',

        yellow = '#e8eb34',
        yellow_dark = '#b1b327',

        red = '#eb4667',
        red_dark = '#a8324a',

        orange = '#ebb146',
        orange_dark = '#665530', -- '#cc933d',

        d_red = '#eb4667',
        d_orange = '#998148', --'#ebc66f', -- '#e68517',
        d_green = '#489968', --'#6feb90', -- '#34eb4c',

        -- col1 = '#a83268',
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
