--[[
 ____  _  _  _  _ 
( ___)( \( )( \/ )
 )__)  )  (  \  / 
(____)(_)\_)  \/  

]]

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

-- Hyprland
hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("HYPRCURSOR_SIZE", "24")

-- Toolkit Backend Variables
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_UTILS_TERMINAL", "kitty")

-- QT Variables
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFOREMTHEME", "qt5ct")

-- NVIDIA Specific
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
