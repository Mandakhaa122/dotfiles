------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.config({
	xwayland = {
		force_zero_scaling = true,
		-- If you use the older 0.55 preview syntax, you might need:
		-- ["force_zero_scaling"] = true
	},
})

hl.monitor({
	output = "eDP-1",
	mode = "preferred",
	position = "auto",
	scale = "1",
})

hl.monitor({
	output = "HDMI-A-1",
	mode = "3840x2160@60",
	position = "1920x0",
	scale = "1",
})
