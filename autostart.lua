-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/configuring/core/autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function() 
   hl.exec_cmd("waybar -c ~/.config/hypr/external/waybar/config -s ~/.config/hypr/external/waybar/style.css & hyprpaper & firefox")
end)