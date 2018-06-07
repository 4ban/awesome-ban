local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local os, math, string = os, math, string

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/darkblue"
theme.wallpaper                                 = theme.dir .. "/wallpapers/wall_0.png"
theme.font                                      = "Meslo LGS Regular 10"
theme.taglist_font                              = "Meslo LGS Bold 10"
theme.tasklist_font                             = "Terminus 10"

theme.bg_normal                                 = "#32302f"
theme.fg_normal                                 = "#a89984"
theme.bg_focus                                  = "#32302f"
theme.fg_focus                                  = "#232323"
theme.bg_urgent                                 = "#C92132"
theme.fg_urgent                                 = "#282828"

theme.fg_widget                                 = "#32302f"

theme.taglist_bg_focus                          = "#4e9699" 
theme.taglist_fg_focus                          = "#282828"
theme.taglist_bg_occupied                       = "#2b5355"
theme.taglist_fg_occupied                       = "#282828"
theme.taglist_bg_empty                          = "#32302f"
theme.taglist_fg_empty                          = "#ebdbb2"
theme.taglist_bg_urgent                         = "#C92132"
theme.taglist_fg_urgent                         = "#282828"

theme.tasklist_bg_normal                        = "#32302f"
theme.tasklist_fg_normal                        = "#ebdbb2"
theme.tasklist_bg_focus                         = "#32302f"
theme.tasklist_fg_focus                         = "#ebdbb2"
theme.tasklist_bg_urgent                        = "#C92132"
theme.tasklist_fg_urgent                        = "#32302f"

theme.border_width                              = 0
theme.border_normal                             = "#32302f"
theme.border_focus                              = "#3f3f3f"
theme.border_marked                             = "#CC9393"

theme.titlebar_bg_normal                        = "#3f3f3f"
theme.titlebar_fg_normal                        = "#282828"

theme.titlebar_bg_focus                         = "#2b5355"
theme.titlebar_fg_focus                         = "#282828"

theme.menu_height                               = 16
theme.menu_width                                = 140

theme.notification_font                         = "Meslo LGS Regular 12"
theme.notification_bg                           = theme.bg_normal
theme.notification_fg                           = theme.fg_normal
theme.notification_border_width                 = 0
theme.notification_border_color                 = theme.bg_normal
theme.notification_shape                        = gears.shape.infobubble
theme.notification_opacity                      = 1
theme.notification_margin                       = 30
--theme.warning                                   = theme.dir .. "/icons/status/warning.png"
--theme.notification_width                        = 300
--theme.notification_height                       = 200

theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.awesome_icon                              = theme.dir .. "/icons/awesome.png"

-- Layout icons
theme.layout_tile                               = theme.dir .. "/icons/layouts/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/layouts/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/layouts/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/layouts/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/layouts/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/layouts/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/layouts/spiral.png"
theme.layout_centerwork                         = theme.dir .. "/icons/layouts/centerwork.png"
theme.layout_dwindle                            = theme.dir .. "/icons/layouts/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/layouts/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/layouts/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/layouts/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/layouts/floating.png"

--Widget icons
theme.widget_ac                                 = theme.dir .. "/icons/widgets/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/widgets/battery.png"
theme.widget_battery_medium                     = theme.dir .. "/icons/widgets/battery_medium.png"
theme.widget_battery_low                        = theme.dir .. "/icons/widgets/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/widgets/battery_empty.png"
theme.widget_battery_no                         = theme.dir .. "/icons/widgets/battery_no.png"

theme.widget_mem                                = theme.dir .. "/icons/widgets/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/widgets/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/widgets/temp.png"
theme.widget_net                                = theme.dir .. "/icons/widgets/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/widgets/ssd.png"
theme.widget_clock                              = theme.dir .. "/icons/widgets/clock.png" 
theme.widget_music                              = theme.dir .. "/icons/widgets/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/widgets/note_on.png"
theme.widget_music_pause                        = theme.dir .. "/icons/widgets/pause.png"
theme.widget_music_stop                         = theme.dir .. "/icons/widgets/stop.png"

theme.widget_vol                                = theme.dir .. "/icons/widgets/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/widgets/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/widgets/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/widgets/vol_mute.png"

theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 7

theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"

theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
--theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"

theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
--theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
--theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"

theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
--theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
--theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"

theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
--theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
--theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"

theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
--theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

-- Application icons
theme.chrome                                    = theme.dir .. "/icons/apps/chrome.png"
theme.webstorm                                  = theme.dir .. "/icons/apps/webstorm.png"
theme.idea                                      = theme.dir .. "/icons/apps/idea.png"
theme.pycharm                                   = theme.dir .. "/icons/apps/pycharm.png"
theme.teamviewer                                = theme.dir .. "/icons/apps/teamviewer.png"
theme.vivaldi                                   = theme.dir .. "/icons/apps/vivaldi.png"

-- colors
theme.green          = "#00b159"
theme.red            = "#d64d4d"
theme.yellow         = "#cc9c00"
theme.blue           = "#428bca"
theme.darkred        = "#c92132"
theme.darkgreen      = "#4d7358"
theme.darkyellow     = "#f18e38" 
theme.gray           = "#5e5e5e"
theme.violet         = "#8c8ccd"
theme.pink           = "#B85C8A"
theme.black          = theme.bg_normal

-- Panel
local markup = lain.util.markup

theme.w1 = theme.dir .. "/icons/display/1.png"
theme.w2 = theme.dir .. "/icons/display/2.png"
theme.w3 = theme.dir .. "/icons/display/3.png"
theme.w4 = theme.dir .. "/icons/display/4.png"
theme.w5 = theme.dir .. "/icons/display/5.png"
theme.w6 = theme.dir .. "/icons/display/6.png"
theme.w7 = theme.dir .. "/icons/display/7.png"
theme.w8 = theme.dir .. "/icons/display/8.png"
theme.w9 = theme.dir .. "/icons/display/9.png"
theme.w10 = theme.dir .. "/icons/display/10.png"
theme.w11 = theme.dir .. "/icons/display/11.png"
theme.w12 = theme.dir .. "/icons/display/12.png"
theme.w13 = theme.dir .. "/icons/display/13.png"
theme.w14 = theme.dir .. "/icons/display/14.png"
theme.w15 = theme.dir .. "/icons/display/15.png"
theme.w16 = theme.dir .. "/icons/display/16.png"
theme.w17 = theme.dir .. "/icons/display/17.png"

w1 = wibox.widget.imagebox(theme.w1)
w2 = wibox.widget.imagebox(theme.w2)
w3 = wibox.widget.imagebox(theme.w3)
w4 = wibox.widget.imagebox(theme.w4)
w5 = wibox.widget.imagebox(theme.w5)
w6 = wibox.widget.imagebox(theme.w6)
w7 = wibox.widget.imagebox(theme.w7)
w8 = wibox.widget.imagebox(theme.w8)
w9 = wibox.widget.imagebox(theme.w9)
w10 = wibox.widget.imagebox(theme.w10)
w11 = wibox.widget.imagebox(theme.w11)
w12 = wibox.widget.imagebox(theme.w12)
w13 = wibox.widget.imagebox(theme.w13)
w14 = wibox.widget.imagebox(theme.w14)
w15 = wibox.widget.imagebox(theme.w15)
w16 = wibox.widget.imagebox(theme.w16)
w17 = wibox.widget.imagebox(theme.w17)

-- Widgets
local clock_icon = wibox.widget.imagebox(theme.widget_clock)
local clock = awful.widget.textclock("<span font=\"Meslo LGS Regular 10\" color=\"#32302f\"> %a %d %b  %H:%M </span>")
local clock_widget = wibox.container.background(wibox.container.margin(wibox.widget {clock_icon, clock, layout = wibox.layout.align.horizontal }, 0, 1), theme.violet)

-- Calendar
local calendar = lain.widget.calendar({
    cal = "cal --color=always",
    attach_to = { clock_widget },
    notification_preset = {
        font = "Meslo LGS Regular 10",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})

-- Battery
local bat_icon = wibox.widget.imagebox(theme.widget_battery)
local batspr_l = wibox.widget.imagebox(theme.w8)
local batspr_r = wibox.widget.imagebox(theme.w9)
local bat = lain.widget.bat({
    battery = "BAT0",
    timeout = 1,
    notify = "on",
    n_perc = {5,15},
    settings = function()
        bat_notification_low_preset = {
            title = "Battery low",
            text = "Plug the cable!",
            timeout = 15,
            fg = "#232323",
            bg = "#f18e38"
        }
        bat_notification_critical_preset = {
            title = "Battery exhausted",
            text = "Shutdown imminent",
            timeout = 15,
            fg = "#232323",
            bg = "#c92132"
        }

        if bat_now.status ~= "N/A" then
            if bat_now.status == "Charging" then
                bat_icon:set_image(theme.widget_ac)
                batspr_l:set_image(theme.w12)
                batspr_r:set_image(theme.w10)
                widget:set_markup(markup.font(theme.font, markup.bg.color(theme.blue, markup.fg.color(theme.fg_widget," +" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]"))))
            elseif bat_now.status == "Full" then
                bat_icon:set_image(theme.widget_ac)
                batspr_l:set_image(theme.w8)
                batspr_r:set_image(theme.w9)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " ~" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            elseif tonumber(bat_now.perc) <= 35 then
                bat_icon:set_image(theme.widget_battery_empty)
                batspr_l:set_image(theme.w13)
                batspr_r:set_image(theme.w11)
                widget:set_markup(markup.font(theme.font, markup.bg.color(theme.red, markup.fg.color(theme.fg_widget, " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]"))))     
            elseif tonumber(bat_now.perc) <= 70 then
                bat_icon:set_image(theme.widget_battery_medium)
                batspr_l:set_image(theme.w16)
                batspr_r:set_image(theme.w14)
                widget:set_markup(markup.font(theme.font, markup.bg.color(theme.yellow, markup.fg.color(theme.fg_widget, " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]"))))
            elseif tonumber(bat_now.perc) <= 90 then
                bat_icon:set_image(theme.widget_battery)
                batspr_l:set_image(theme.w17)
                batspr_r:set_image(theme.w15)
                widget:set_markup(markup.font(theme.font, markup.bg.color(theme.green, markup.fg.color(theme.fg_widget, " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]"))))
            else
                bat_icon:set_image(theme.widget_battery)
                batspr_l:set_image(theme.w12)
                batspr_r:set_image(theme.w10)
                widget:set_markup(markup.font(theme.font, markup.bg.color(theme.blue, markup.fg.color(theme.fg_widget, " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]"))))
            end
        else
            widget:set_markup(markup.font(theme.font, markup.bg.color(theme.red, markup.fg.color(theme.fg_widget, " AC "))))
            bat_icon:set_image(theme.widget_battery_no)
            batspr_l:set_image(theme.w13)
            batspr_r:set_image(theme.w11)
        end
    end
})

-- Battery
local batbar = wibox.widget {
    forced_height    = 1,
    forced_width     = 45,
    color            = "#232323",
    background_color = "#232323",
    margins          = 1,
    paddings         = 1,
    ticks            = true,
    ticks_size       = 5,
    widget           = wibox.widget.progressbar,
}

local batupd = lain.widget.bat({
    battery = "BAT0",
    timeout = 1,
    settings = function()
        if bat_now.status ~= "N/A" then
            if bat_now.status == "Charging" then
                batbar:set_color(theme.blue)
            elseif bat_now.status == "Full" then
                batbar:set_color(theme.gray)
            elseif tonumber(bat_now.perc) <= 35 then
                batbar:set_color(theme.red)
            elseif tonumber(bat_now.perc) <= 70 then
                batbar:set_color(theme.yellow)
            elseif tonumber(bat_now.perc) <= 90 then
                batbar:set_color(theme.green)
            else
                batbar:set_color(theme.blue)
            end
            batbar:set_value(bat_now.perc / 100)
        else
            return
        end
    end
})
local batbg = wibox.container.background(batbar, "#474747", gears.shape.rectangle)
local bat_widget = wibox.container.margin(batbg, 2, 7, 4, 4)

--local battery_widget = wibox.container.background(wibox.container.margin(wibox.widget { bat_icon, bat_widget, bat.widget, layout = wibox.layout.align.horizontal }, 1, 1), theme.gray)
local battery_widget1 = wibox.container.background(wibox.container.margin(wibox.widget { bat_icon, bat_widget,  layout = wibox.layout.align.horizontal }, 1, 1), theme.gray)
local battery_widget2 = wibox.container.background(wibox.container.margin(wibox.widget { batspr_l, bat.widget, batspr_r, layout = wibox.layout.align.horizontal }, 0, 0), theme.gray)

-- MEM
local mem_icon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font, markup.fg.color(theme.fg_widget, " " .. mem_now.used .. "MB [" .. mem_now.perc .. "%]")))
    end
})
local mem_widget =  wibox.container.background(wibox.container.margin(wibox.widget { mem_icon, mem.widget, layout = wibox.layout.align.horizontal }, 0, 0), theme.pink)


-- CPU
local cpu_icon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, markup.fg.color(theme.fg_widget, " " .. cpu_now.usage .. "% ")))
    end
})
local cpu_widget =  wibox.container.background(wibox.container.margin(wibox.widget { cpu_icon, cpu.widget, layout = wibox.layout.align.horizontal }, 0, 0), theme.blue)


-- Coretemp (lain, average)
local temp_icon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, markup.fg.color(theme.fg_widget, " " .. coretemp_now .. "° ")))
    end
})
local temp_widget =  wibox.container.background(wibox.container.margin(wibox.widget { temp_icon, temp.widget, layout = wibox.layout.align.horizontal }, 0, 0), theme.red)


-- FS
local fs_icon = wibox.widget.imagebox(theme.widget_hdd)
local fs = lain.widget.fs({
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = theme.fs_font },
    settings = function()
        local fsp = string.format(" %3.2f %s ", fs_now["/home"].free, fs_now["/home"].units)
        widget:set_markup(markup.font(theme.font, markup.fg.color(theme.fg_widget, fsp)))
    end
})
local fs_widget =  wibox.container.background(wibox.container.margin(wibox.widget { fs_icon, fs.widget, layout = wibox.layout.align.horizontal }, 0, 0), theme.yellow)

-- ALSA volume bar
local vol_icon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsabar({
    width = 45, border_width = 0, ticks = true, ticks_size = 5,
    notification_preset = { font = theme.font },
    --togglechannel = "IEC958,3",
    settings = function()
        if volume_now.status == "off" then
            vol_icon:set_image(theme.widget_vol_mute)
        elseif volume_now.level == 0 then
            vol_icon:set_image(theme.widget_vol_no)
        elseif volume_now.level <= 50 then
            vol_icon:set_image(theme.widget_vol_low)
        else
            vol_icon:set_image(theme.widget_vol)
        end
    end,
    colors = {
        background   = theme.bg_normal,
        mute         = red,
        unmute       = "#5cb85c"
    }
})
theme.volume.tooltip.wibox.fg = theme.fg_widget
theme.volume.bar:buttons(awful.util.table.join (
          awful.button({}, 1, function()
            awful.spawn.with_shell(string.format("%s -e alsamixer", awful.util.terminal))
          end),
          awful.button({}, 2, function()
            awful.spawn(string.format("%s set %s 100%%", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 3, function()
            awful.spawn(string.format("%s set %s toggle", theme.volume.cmd, theme.volume.togglechannel or theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 4, function()
            awful.spawn(string.format("%s set %s 1%%+", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end),
          awful.button({}, 5, function()
            awful.spawn(string.format("%s set %s 1%%-", theme.volume.cmd, theme.volume.channel))
            theme.volume.update()
          end)
))
local volumebg = wibox.container.background(theme.volume.bar, "#888888", gears.shape.rectangle)
local vol_widget = wibox.container.margin(volumebg, 2, 7, 4, 4)
local volume_widget = wibox.container.background(wibox.container.margin(wibox.widget { vol_icon, vol_widget, layout = wibox.layout.align.horizontal }, 0, 0), theme.blue)

-- Keyboard layout switcher
-- kbdwidget = wibox.widget.textbox()
-- kbdwidget.border_width = 0
-- kbdwidget.border_color = theme.bg_normal
-- kbdwidget.font = theme.font
-- kbdwidget:set_markup("<span foreground=".."'"..theme.fg_widget.."'".."> Eng </span>")

-- kbdstrings = {[0] = " Eng ",
--               [1] = " Rus "}

-- dbus.request_name("session", "ru.gentoo.kbdd")
-- dbus.add_match("session", "interface='ru.gentoo.kbdd',member='layoutChanged'")
-- dbus.connect_signal("ru.gentoo.kbdd", function(...)
--     local data = {...}
--     local layout = data[2]
--     kbdwidget:set_markup("<span foreground=".."'"..theme.fg_widget.."'"..">" .. kbdstrings[layout] .. "</span>")
--     end
-- )
-- local kbd_widget = wibox.container.background(wibox.container.margin(wibox.widget { kbdwidget, layout = wibox.layout.align.horizontal }, 0, 0, 0, 0), theme.green)

kbd_widget = awful.widget.keyboardlayout:new()
local kbd_widget = wibox.container.background(wibox.container.margin(wibox.widget { kbd_widget, layout = wibox.layout.align.horizontal }, 0, 0, 0, 0), theme.green)

-- -- Chrome_button
local chrome_button = awful.widget.button({ image = theme.chrome })
chrome_button:buttons(awful.util.table.join(
  awful.button({ }, 1, function () awful.util.spawn("google-chrome-stable") end)
))
-- vivaldi_button
local vivaldi_button = awful.widget.button({ image = theme.vivaldi })
vivaldi_button:buttons(awful.util.table.join(
  awful.button({ }, 1, function () awful.util.spawn("vivaldi-snapshot") end)
))
-- webstorm_button
webstorm_button = awful.widget.button({ image = theme.webstorm })
webstorm_button:buttons(awful.util.table.join(
  awful.button({ }, 1, function () awful.util.spawn("webstorm") end)
))
-- idea_button
idea_button = awful.widget.button({ image = theme.idea })
idea_button:buttons(awful.util.table.join(
  awful.button({ }, 1, function () awful.util.spawn("intellij-idea-ultimate-edition") end)
))
-- pycharm_button
pycharm_button = awful.widget.button({ image = theme.pycharm })
pycharm_button:buttons(awful.util.table.join(
  awful.button({ }, 1, function () awful.util.spawn("pycharm") end)
))
-- teamviewer_button
teamviewer_button = awful.widget.button({ image = theme.teamviewer })
teamviewer_button:buttons(awful.util.table.join(
  awful.button({ }, 1, function () awful.util.spawn("teamviewer") end)
))

function theme.connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, 1, true)
    
    -- Tags
    --awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])
    layout = { awful.layout.layouts[1], awful.layout.layouts[1], awful.layout.layouts[1], awful.layout.layouts[3], awful.layout.layouts[3], awful.layout.layouts[5]}
    awful.tag({ " </> ", " >_ ", " web ", " & ", " etc ", " # " }, s, layout)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(awful.util.table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    --s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 16, bg = theme.bg_normal, fg = theme.fg_focus,  })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            s.mytaglist,
            s.mypromptbox,
            chrome_button,
            idea_button,
            pycharm_button,
            webstorm_button,
            teamviewer_button,
            vivaldi_button,
        },
        --s.mytasklist, -- Middle widget
        nil,
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            -- Keyboard
            w1,
            kbd_widget,
            -- Volume
            w2,
            volume_widget,
            -- Fs widget
            w3,
            fs_widget,
            -- Temp
            w4,
            temp_widget,
            -- CPU widget
            w5,
            cpu_widget,
            -- Mem widget
            w6,
            mem_widget,
            -- Battery widget
            w7,
            battery_widget1,
            battery_widget2,
            -- Clock
            clock_widget,
            -- Layout box
            s.mylayoutbox,
        },
    }
end

return theme
