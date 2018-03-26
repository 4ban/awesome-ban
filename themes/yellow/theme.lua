local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local os, math, string = os, math, string

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/yellow"
theme.wallpaper                                 = theme.dir .. "/wall_8.png"
theme.font                                      = "Meslo LGS Regular 10"
theme.taglist_font                              = "Meslo LGS Bold 10"
theme.tasklist_font                             = "Terminus 10"
theme.fg_normal                                 = "#e4e4e4"
theme.fg_focus                                  = "#428bca"
theme.fg_urgent                                 = "#C83F11"
theme.bg_normal                                 = "#222222"
theme.bg_focus                                  = "#ffbf00"
theme.bg_urgent                                 = "#3F3F3F"
theme.taglist_fg_focus                          = "#232323"
theme.taglist_fg_empty                          = "#e4e4e4"
theme.taglist_bg_occupied                       = "#785A00"
theme.taglist_bg_urgent                         = "#f8173e"
theme.taglist_fg_urgent                         = "#232323"
theme.taglist_fg_occupied                       = "#232323"
theme.tasklist_bg_focus                         = "#232323"
theme.tasklist_fg_normal                        = "#888888"
theme.tasklist_fg_focus                         = "#e4e4e4"
theme.tasklist_bg_urgent                        = "#f8173e"
theme.border_width                              = 1
theme.border_normal                             = "#3F3F3F"
theme.border_focus                              = "#6F6F6F"
theme.border_marked                             = "#CC9393"

theme.titlebar_bg_focus                         = "#3F3F3F"
theme.titlebar_bg_normal                        = "#3F3F3F"
theme.titlebar_bg_focus                         = "#262626"
theme.titlebar_bg_normal                        = "#222222"
theme.titlebar_fg_focus                         = "#888888"

theme.menu_height                               = 16
theme.menu_width                                = 140

theme.notification_font                         = "Meslo LGS Regular 12"
theme.notification_bg                           = "#5cb85c"
theme.notification_fg                           = "#232323"
theme.notification_border_width                 = 0
theme.notification_border_color                 = theme.bg_normal
theme.notification_shape                        = gears.shape.infobubble
theme.notification_opacity                      = 1
theme.notification_margin                       = 30
theme.warning                                   = theme.dir .. "/icons/status/warning.png"
--theme.notification_width                        = 300
--theme.notification_height                       = 200

theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.awesome_icon                              = theme.dir .. "/icons/awesome.png"

--theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
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

-- Widget icons
theme.widget_ac                                 = theme.dir .. "/icons/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/battery.png"
theme.widget_battery_medium                     = theme.dir .. "/icons/battery_medium.png"
theme.widget_battery_low                        = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/battery_empty.png"
theme.widget_battery_no                         = theme.dir .. "/icons/battery_no.png"

theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/ssd.png"
theme.widget_clock                              = theme.dir .. "/icons/clock.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note_on.png"
theme.widget_music_pause                        = theme.dir .. "/icons/pause.png"
theme.widget_music_stop                         = theme.dir .. "/icons/stop.png"

theme.widget_vol                                = theme.dir .. "/icons/vol.svg"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.svg"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.svg"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.svg"

theme.widget_mail                               = theme.dir .. "/icons/mail.png"
theme.widget_mail_on                            = theme.dir .. "/icons/mail_on.png"
theme.widget_task                               = theme.dir .. "/icons/task.png"
theme.widget_scissors                           = theme.dir .. "/icons/scissors.png"
theme.batcolor                                  = "#5cb85c"

theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 7

theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"

theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.svg"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.svg"

theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.svg"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.svg"

theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.svg"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.svg"

theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.svg"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.svg"

theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.svg"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.svg"

theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"

theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

-- Application icons
theme.chrome                                    = theme.dir .. "/icons/apps/chrome.png"
theme.webstorm                                  = theme.dir .. "/icons/apps/webstorm.png"
theme.idea                                      = theme.dir .. "/icons/apps/idea.png"
theme.pycharm                                   = theme.dir .. "/icons/apps/pycharm.png"

local markup = lain.util.markup
local separators = lain.util.separators

-- Widgets
local clock_icon = wibox.widget.imagebox(theme.widget_clock)
local clock_widget = awful.widget.textclock("<span font=\"Meslo LGS Regular 10\" color=\"#232323\"> %a %d %b  %H:%M</span>")

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
        background   = "#232323",
        mute         = red,
        unmute       = "#5cb85c"
    }
})
theme.volume.tooltip.wibox.fg = "#232323"
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
local volume_widget = wibox.container.margin(volumebg, 2, 7, 4, 4)

-- MEM
local mem_icon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " " .. mem_now.used .. "MB [" .. mem_now.perc .. "%]")))
    end
})

-- CPU
local cpu_icon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " " .. cpu_now.usage .. "% ")))
    end
})

-- Coretemp (lain, average)
local temp_icon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " " .. coretemp_now .. "° ")))
    end
})


-- FS
local fs_icon = wibox.widget.imagebox(theme.widget_hdd)
theme.fs = lain.widget.fs({
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = theme.font },
    settings = function()
        local fsp = string.format(" %3.2f %s ", fs_now["/home"].free, fs_now["/home"].units)
        widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", fsp)))
    end
})

-- Battery

local bat_icon = wibox.widget.imagebox(theme.widget_battery)
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
            bg = "#ffbf00"
        }
        bat_notification_critical_preset = {
            title = "Battery exhausted",
            text = "Shutdown imminent",
            timeout = 15,
            fg = "#232323",
            bg = "#e35d6a"
        }

        if bat_now.status ~= "N/A" then
            if bat_now.status == "Charging" then
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " +" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
                bat_icon:set_image(theme.widget_ac)
            elseif bat_now.status == "Full" then
                --theme.batcolor = "#428bca"
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " ~" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
                bat_icon:set_image(theme.widget_battery)
            elseif tonumber(bat_now.perc) <= 35 then
                --theme.batcolor = "#e35d6a"
                bat_icon:set_image(theme.widget_battery_empty)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            elseif tonumber(bat_now.perc) <= 60 then
                --theme.batcolor = "#e35d6a"
                bat_icon:set_image(theme.widget_battery_low)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            
            elseif tonumber(bat_now.perc) <= 80 then
                --theme.batcolor = "#ffbf00"
                bat_icon:set_image(theme.widget_battery_medium)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            elseif tonumber(bat_now.perc) <= 99 then
                --theme.batcolor = "#ffbf00"
                bat_icon:set_image(theme.widget_battery)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            else
                --theme.batcolor = "#5cb85c"
                bat_icon:set_image(theme.widget_battery)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            end
        else
            --theme.batcolor = "#e35d6a"
            widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " AC ")))
            bat_icon:set_image(theme.widget_battery_no)
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
                batbar:set_color("#428bca")
            elseif bat_now.status == "Full" then
                batbar:set_color("#777ace")
            elseif tonumber(bat_now.perc) <= 35 then
                batbar:set_color("#e35d6a")
            elseif tonumber(bat_now.perc) <= 80 then
                batbar:set_color("#ffbf00")
            elseif tonumber(bat_now.perc) <= 99 then
                batbar:set_color("#5cb85c")
            else
                batbar:set_color("#5cb85c")
            end
            batbar:set_value(bat_now.perc / 100)
        else
            return
        end
    end
})
local batbg = wibox.container.background(batbar, "#474747", gears.shape.rectangle)
local bat_widget = wibox.container.margin(batbg, 2, 7, 4, 4)

-- Keyboard layout switcher
kbdwidget = wibox.widget.textbox()
kbdwidget.border_width = 1
kbdwidget.border_color = "#232323"
kbdwidget.font = theme.font
kbdwidget:set_markup("<span foreground='#232323'> Eng </span>")


kbdstrings = {[0] = " Eng ",
              [1] = " Rus "}

dbus.request_name("session", "ru.gentoo.kbdd")
dbus.add_match("session", "interface='ru.gentoo.kbdd',member='layoutChanged'")
dbus.connect_signal("ru.gentoo.kbdd", function(...)
    local data = {...}
    local layout = data[2]
    kbdwidget:set_markup("<span foreground='#232323'>" .. kbdstrings[layout] .. "</span>")
    end
)

-- Chrome_button
chrome_button = awful.widget.button({ image = theme.chrome })
chrome_button:buttons(awful.util.table.join(
  awful.button({ }, 1, function () awful.util.spawn("google-chrome-stable") end)
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
          
-- Separators
local arrow = separators.arrow_left

-- Unused
function theme.powerline_rl(cr, width, height)
    local arrow_depth, offset = height/2, 0

    -- Avoid going out of the (potential) clip area
    if arrow_depth < 0 then
        width  =  width + 2*arrow_depth
        offset = -arrow_depth
    end

    cr:move_to(offset + arrow_depth         , 0        )
    cr:line_to(offset + width               , 0        )
    cr:line_to(offset + width - arrow_depth , height/2 )
    cr:line_to(offset + width               , height   )
    cr:line_to(offset + arrow_depth         , height   )
    cr:line_to(offset                       , height/2 )

    cr:close_path()
end

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
    layout = { awful.layout.layouts[1], awful.layout.layouts[1], awful.layout.layouts[1], awful.layout.layouts[3], awful.layout.layouts[5], awful.layout.layouts[5]}
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
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 17, bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --spr,
            s.mytaglist,
            s.mypromptbox,
            wibox.container.background(wibox.container.margin(wibox.widget { chrome_button, layout = wibox.layout.align.horizontal }, 1, 1), theme.bg_normal),
            wibox.container.background(wibox.container.margin(wibox.widget { webstorm_button, layout = wibox.layout.align.horizontal }, 1, 1), theme.bg_normal),
            wibox.container.background(wibox.container.margin(wibox.widget { idea_button, layout = wibox.layout.align.horizontal }, 1, 1), theme.bg_normal),
            wibox.container.background(wibox.container.margin(wibox.widget { pycharm_button, layout = wibox.layout.align.horizontal }, 1, 1), theme.bg_normal),
        },
        --s.mytasklist, -- Middle widget
        nil,
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),

            arrow(theme.bg_normal, "#428bca"),
            wibox.container.background(wibox.container.margin(wibox.widget { kbdwidget, layout = wibox.layout.align.horizontal }, 1, 1), "#428bca"),
            arrow("#428bca", "#f18e38"),
            wibox.container.background(wibox.container.margin(wibox.widget { vol_icon, volume_widget, layout = wibox.layout.align.horizontal }, 1, 1), "#f18e38"),
            arrow("#f18e38", "#b391db"),
            wibox.container.background(wibox.container.margin(wibox.widget { fs_icon, theme.fs.widget, layout = wibox.layout.align.horizontal }, 1, 1), "#b391db"),
            arrow("#b391db", "#428bca"),
            wibox.container.background(wibox.container.margin(wibox.widget { temp_icon, temp.widget, layout = wibox.layout.align.horizontal }, 1, 1), "#428bca"), 
            arrow("#428bca", "#f18e38"),
            wibox.container.background(wibox.container.margin(wibox.widget { cpu_icon, cpu.widget, layout = wibox.layout.align.horizontal }, 1, 1), "#f18e38"),
            arrow("#f18e38", "#b391db"),
            wibox.container.background(wibox.container.margin(wibox.widget { mem_icon, mem.widget, layout = wibox.layout.align.horizontal }, 1, 1), "#b391db"),
            arrow("#b391db", theme.batcolor),
            wibox.container.background(wibox.container.margin(wibox.widget { bat_icon, bat_widget, bat.widget, layout = wibox.layout.align.horizontal }, 1, 1), theme.batcolor),
            arrow(theme.batcolor, "#f18e38"),
            wibox.container.background(wibox.container.margin(wibox.widget {clock_widget, layout = wibox.layout.align.horizontal }, 1, 1), "#f18e38"),
            arrow("#f18e38", "#232323"), 
            s.mylayoutbox,
        },
    }
end

return theme
