--[[

     Licensed under GNU General Public License v2
      * (c) 2013, Luke Bonham
      * (c) 2013, Rman

--]]

local helpers        = require("lain.helpers")
local awful          = require("awful")
local naughty        = require("naughty")
local wibox          = require("wibox")
local math           = { modf   = math.modf }
local string         = { format = string.format,
                         match  = string.match,
                         gmatch = string.gmatch,
                         rep    = string.rep }
local type, tonumber = type, tonumber

-- PulseAudio volume bar
-- lain.widget.pulsebar

local function factory(args)
    local pulsebar = {
        colors = {
            background = "#000000",
            mute       = "#EB8F8F",
            unmute     = "#A4CE8A"
        },

        _current_level = 0,
        _mute          = "no",
        device         = "N/A"
    }

    local args       = args or {}
    local timeout    = args.timeout or 5
    local settings   = args.settings or function() end
    local width      = args.width or 63
    local height     = args.heigth or 1
    local ticks      = args.ticks or false
    local ticks_size = args.ticks_size or 7

    pulsebar.colors              = args.colors or pulsebar.colors
    pulsebar.followtag           = args.followtag or false
    pulsebar.notification_preset = args.notification_preset
    pulsebar.devicetype          = args.devicetype or "sink"
    pulsebar.cmd                 = args.cmd or "pacmd list-" .. pulsebar.devicetype .. "s | sed -n -e '/*/,$!d' -e '/index/p' -e '/base volume/d' -e '/volume:/p' -e '/muted:/p' -e '/device\\.string/p'"

    if not pulsebar.notification_preset then
        pulsebar.notification_preset = {
            font = "Monospace 10"
        }
    end

    pulsebar.bar = wibox.widget {
        forced_height    = height,
        forced_width     = width,
        color            = pulsebar.colors.unmute,
        background_color = pulsebar.colors.background,
        margins          = 1,
        paddings         = 1,
        ticks            = ticks,
        ticks_size       = ticks_size,
        widget           = wibox.widget.progressbar,
    }

    pulsebar.tooltip = awful.tooltip({ objects = { pulsebar.bar } })

    function pulsebar.update(callback)
        helpers.async({ awful.util.shell, "-c", type(pulsebar.cmd) == "string" and pulsebar.cmd or pulsebar.cmd() },
        function(s)
            volume_now = {
                index  = string.match(s, "index: (%S+)") or "N/A",
                device = string.match(s, "device.string = \"(%S+)\"") or "N/A",
                muted  = string.match(s, "muted: (%S+)") or "N/A"
            }

            pulsebar.device = volume_now.index

            local ch = 1
            volume_now.channel = {}
            for v in string.gmatch(s, ":.-(%d+)%%") do
              volume_now.channel[ch] = v
              ch = ch + 1
            end

            volume_now.left  = volume_now.channel[1] or "N/A"
            volume_now.right = volume_now.channel[2] or "N/A"

            local volu = volume_now.left
            local mute = volume_now.muted

            if volu:match("N/A") or mute:match("N/A") then return end

            if volu ~= pulsebar._current_level or mute ~= pulsebar._mute then
                pulsebar._current_level = tonumber(volu)
                pulsebar.bar:set_value(pulsebar._current_level / 100)
                if pulsebar._current_level == 0 or mute == "yes" then
                    pulsebar._mute = mute
                    pulsebar.tooltip:set_text ("[muted]")
                    pulsebar.bar.color = pulsebar.colors.mute
                else
                    pulsebar._mute = "no"
                    pulsebar.tooltip:set_text(string.format("%s %s: %s", pulsebar.devicetype, pulsebar.device, volu))
                    pulsebar.bar.color = pulsebar.colors.unmute
                end

                settings()

                if type(callback) == "function" then callback() end
            end
        end)
    end

    function pulsebar.notify()
        pulsebar.update(function()
            local preset = pulsebar.notification_preset

            preset.title = string.format("%s %s - %s%%", pulsebar.devicetype, pulsebar.device, pulsebar._current_level)

            if pulsebar._mute == "yes" then
                preset.title = preset.title .. " muted"
            end

            int = math.modf((pulsebar._current_level / 100) * awful.screen.focused().mywibox.height)
            preset.text = string.format("[%s%s]", string.rep("|", int),
                          string.rep(" ", awful.screen.focused().mywibox.height - int))

            if pulsebar.followtag then preset.screen = awful.screen.focused() end

            if not pulsebar.notification then
                pulsebar.notification = naughty.notify {
                    preset  = preset,
                    destroy = function() pulsebar.notification = nil end
                }
            else
                naughty.replace_text(pulsebar.notification, preset.title, preset.text)
            end
        end)
    end

    helpers.newtimer(string.format("pulsebar-%s", pulsebar.sink), timeout, pulsebar.update)

    return pulsebar
end

return factory
