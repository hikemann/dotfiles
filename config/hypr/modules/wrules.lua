--[[
 _    _  ____  _  _  ____  _____  _    _    ____  __  __  __    ____  ___ 
( \/\/ )(_  _)( \( )(  _ \(  _  )( \/\/ )  (  _ \(  )(  )(  )  ( ___)/ __)
 )    (  _)(_  )  (  )(_) ))(_)(  )    (    )   / )(__)(  )(__  )__) \__ \
(__/\__)(____)(_)\_)(____/(_____)(__/\__)  (_)\_)(______)(____)(____)(___/

]]

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Включаем прозрачность для Nautilus через hl.window_rule
hl.window_rule({
  match   = { class = "org.gnome.Nautilus" },
  opacity = "0.78 override 0.68 override",
})
