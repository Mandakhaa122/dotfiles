
-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
 hl.on("hyprland.start", function ()
   hl.exec_cmd("nm-applet")
   hl.exec_cmd("waybar")
   hl.exec_cmd("awww-daemon")
   hl.exec_cmd("[workspace 5 silent] firefox")
 end)
