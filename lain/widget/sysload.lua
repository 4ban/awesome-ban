--[[

     Licensed under GNU General Public License v2
      * (c) 2013,      Luke Bonham
      * (c) 2010-2012, Peter Hofmann

--]]

local helpers     = require("lain.helpers")
local wibox       = require("wibox")
local open, match = io.open, string.match

-- System load
-- lain.widget.sysload

local function factory(args)
    local sysload  = { widget = wibox.widget.textbox() }
    local args     = args or {}
    local timeout  = args.timeout or 2
    local settings = args.settings or function() end

    function sysload.update()
        local f = open("/proc/loadavg")
        local ret = f:read("*all")
        f:close()

        load_1, load_5, load_15 = match(ret, "([^%s]+) ([^%s]+) ([^%s]+)")

        widget = sysload.widget
        settings()
    end

    helpers.newtimer("sysload", timeout, sysload.update)

    return sysload
end

return factory
