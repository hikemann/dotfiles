--[[
   __    __  __  ____  _____  ___  ____   __    ____  ____ 
  /__\  (  )(  )(_  _)(  _  )/ __)(_  _) /__\  (  _ \(_  _)
 /(__)\  )(__)(   )(   )(_)( \__ \  )(  /(__)\  )   /  )(  
(__)(__)(______) (__) (_____)(___/ (__)(__)(__)(_)\_) (__) 

]]

hl.on("hyprland.start", function () 
  hl.exec_cmd("waybar")
  hl.exec_cmd("awww-daemon")
  hl.exec_cmd("mako")
  hl.exec_cmd("/home/tri/.config/hypr/scripts/layout_notifier.sh")
  hl.exec_cmd("dconf write /org/gnome/desktop/interface/color-scheme \"'prefer-dark'\"")
  hl.exec_cmd("dconf write /org/gnome/desktop/interface/icon-theme \"'YAMIS'\"")
  hl.exec_cmd("dconf write /com/github/stunkymonkey/nautilus-open-any-terminal/terminal \"'kitty'\"")
  hl.exec_cmd("dconf write /com/github/stunkymonkey/nautilus-open-any-terminal/keybindings \"''\"")
end)
