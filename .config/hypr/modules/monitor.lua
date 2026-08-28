
------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.config({
    xwayland = {
        force_zero_scaling = true
        -- If you use the older 0.55 preview syntax, you might need:
        -- ["force_zero_scaling"] = true
    }
})

hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "1",
})
