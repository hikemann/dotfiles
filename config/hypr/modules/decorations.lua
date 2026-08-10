--[[
 ____  ____  ___  _____  ____    __   ____  ____  _____  _  _  ___ 
(  _ \( ___)/ __)(  _  )(  _ \  /__\ (_  _)(_  _)(  _  )( \( )/ __)
 )(_) ))__)( (__  )(_)(  )   / /(__)\  )(   _)(_  )(_)(  )  ( \__ \
(____/(____)\___)(_____)(_)\_)(__)(__)(__) (____)(_____)(_)\_)(___/

]]

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 3,
        gaps_out = 10,

        border_size = 2,

        col = {
            active_border   = { colors = {"rgba(c5c9c5aa)", "rgba(e6e2ccee)"}, angle = 45 },
            inactive_border = "rgba(181616aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 0,
        rounding_power = 0,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 6,
            passes    = 3,
            vibrancy  = 0.1696,
        },
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
