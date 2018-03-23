local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local os, math, string = os, math, string

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/violet"
theme.wallpaper                                 = theme.dir .. "/wallpapers/wall_0.png"
theme.font                                      = "Meslo LGS Regular 10"
theme.taglist_font                              = "Meslo LGS Bold 10"
theme.tasklist_font                             = "Terminus 10"

theme.fg_normal                                 = "#d5a3ec"
theme.fg_focus                                  = "#428bca"
theme.fg_urgent                                 = "#C83F11"
theme.bg_normal                                 = "#312347"
theme.bg_focus                                  = "#b873bd"
theme.bg_urgent                                 = "#3F3F3F"

theme.taglist_bg_focus                          = "#b873bd"
theme.taglist_fg_focus                          = "#130e1c"
theme.taglist_fg_empty                          = "#d57cf4"
theme.taglist_bg_occupied                       = "#6b2670"
theme.taglist_fg_occupied                       = "#130e1c"
theme.taglist_bg_urgent                         = "#f8173e"
theme.taglist_fg_urgent                         = "#232323"

theme.tasklist_bg_focus                         = "#312347"
theme.tasklist_fg_normal                        = "#888888"
theme.tasklist_fg_focus                         = "#e4e4e4"
theme.tasklist_bg_urgent                        = "#f8173e"

theme.border_width                              = 0
theme.border_normal                             = "#d57cf4"
theme.border_focus                              = "#d57cf4"
theme.border_marked                             = "#CC9393"

theme.titlebar_bg_normal                        = "#312347"
theme.titlebar_bg_focus                         = "#6b2670"
theme.titlebar_fg_normal                        = "#d5a3ec"
theme.titlebar_fg_focus                         = "#130e1c"

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

-- Widget icons
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

theme.widget_vol                                = theme.dir .. "/icons/widgets/vol.svg"
theme.widget_vol_low                            = theme.dir .. "/icons/widgets/vol_low.svg"
theme.widget_vol_no                             = theme.dir .. "/icons/widgets/vol_no.svg"
theme.widget_vol_mute                           = theme.dir .. "/icons/widgets/vol_mute.svg"

theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 0

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
theme.teamviewer                                = theme.dir .. "/icons/apps/teamviewer.png"
theme.vivaldi                                   = theme.dir .. "/icons/apps/vivaldi.png"

-- Panel
theme.vwd = theme.dir .. "/icons/display/violet/wd.png"
theme.vwr = theme.dir .. "/icons/display/violet/wr.png"
theme.vwl = theme.dir .. "/icons/display/violet/wl.png"
theme.vwc = theme.dir .. "/icons/display/violet/wc.png"


theme.spr    = theme.dir .. "/icons/separators/spr.png"
theme.spr5px = theme.dir .. "/icons/separators/spr5px.png"

local markup = lain.util.markup
space3 = markup.font("Meslo LGS Regular-10", " ")
spr = wibox.widget.imagebox(theme.spr)
spr5px = wibox.widget.imagebox(theme.spr5px)

vwd = wibox.widget.imagebox(theme.vwd)
vwr = wibox.widget.imagebox(theme.vwr)
vwl = wibox.widget.imagebox(theme.vwl)
vwc = wibox.widget.imagebox(theme.vwc)
-- Widgets

local clock_ic = wibox.widget.imagebox(theme.widget_clock)
local clock = awful.widget.textclock("<span font=\"Meslo LGS Regular 10\"> %a %d %b  %H:%M</span>")

local clock_widget = wibox.container.background(clock)
local clock_icon = wibox.container.background(clock_ic)
clock_widget.bgimage = theme.vwd
clock_icon.bgimage = theme.vwd
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
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " ~" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
                bat_icon:set_image(theme.widget_battery)
            elseif tonumber(bat_now.perc) <= 35 then
                bat_icon:set_image(theme.widget_battery_empty)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            elseif tonumber(bat_now.perc) <= 60 then
                bat_icon:set_image(theme.widget_battery_low)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            elseif tonumber(bat_now.perc) <= 80 then
                bat_icon:set_image(theme.widget_battery_medium)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            elseif tonumber(bat_now.perc) <= 99 then
                bat_icon:set_image(theme.widget_battery)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            else
                bat_icon:set_image(theme.widget_battery)
                widget:set_markup(markup.font(theme.font, markup.fg.color("#232323", " -" .. bat_now.perc .. "% [" .. bat_now.watt .. "W][" .. bat_now.time .. "]")))
            end
        else
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
bat_widget.bgimage = theme.vwd

-- MEM
local mem_ic = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(space3 .. mem_now.used .. " MB [" .. mem_now.perc .. "%]")
    end
})
local mem_widget = wibox.container.background(mem.widget)
mem_widget.bgimage=theme.vwd
local mem_icon = wibox.container.background(mem_ic)
mem_icon.bgimage=theme.vwd

-- CPU
local cpu_ic = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(space3 .. cpu_now.usage .. "%")
    end
})
local cpu_widget = wibox.container.background(cpu.widget)
cpu_widget.bgimage=theme.vwd
local cpu_icon = wibox.container.background(cpu_ic)
cpu_icon.bgimage=theme.vwd

-- Coretemp (lain, average)
local temp_ic = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(space3 .. coretemp_now .. "° ")
    end
})
local temp_widget = wibox.container.background(temp.widget)
temp_widget.bgimage=theme.vwd
local temp_icon = wibox.container.background(temp_ic)
temp_icon.bgimage=theme.vwd

-- FS
local fs_ic = wibox.widget.imagebox(theme.widget_hdd)
local fs = lain.widget.fs({
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = theme.fs_font },
    settings = function()
        local fsp = string.format(" %3.2f %s ", fs_now["/home"].free, fs_now["/home"].units)
        widget:set_markup(markup.font(theme.font, fsp))
    end
})
local fs_widget = wibox.container.background(fs.widget)
fs_widget.bgimage=theme.vwd   
local fs_icon = wibox.container.background(fs_ic)
fs_icon.bgimage=theme.vwd      

-- ALSA volume bar
local vol_ic = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsabar({
    width = 45, border_width = 0, ticks = true, ticks_size = 5,
    notification_preset = { font = theme.font },
    --togglechannel = "IEC958,3",
    settings = function()
        if volume_now.status == "off" then
            vol_ic:set_image(theme.widget_vol_mute)
        elseif volume_now.level == 0 then
            vol_ic:set_image(theme.widget_vol_no)
        elseif volume_now.level <= 50 then
            vol_ic:set_image(theme.widget_vol_low)
        else
            vol_ic:set_image(theme.widget_vol)
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
volume_widget.bgimage=theme.vwd
local vol_icon = wibox.container.background(vol_ic)
vol_icon.bgimage=theme.vwd

-- Keyboard layout switcher
kbdwidget = wibox.widget.textbox()
kbdwidget.border_width = 1
kbdwidget.border_color = theme.bg_normal
kbdwidget.font = theme.font
kbdwidget:set_markup("<span foreground=".."'"..theme.fg_normal.."'".."> Eng </span>")

kbdstrings = {[0] = " Eng ",
              [1] = " Rus "}

dbus.request_name("session", "ru.gentoo.kbdd")
dbus.add_match("session", "interface='ru.gentoo.kbdd',member='layoutChanged'")
dbus.connect_signal("ru.gentoo.kbdd", function(...)
    local data = {...}
    local layout = data[2]
    kbdwidget:set_markup("<span foreground=".."'"..theme.fg_normal.."'"..">" .. kbdstrings[layout] .. "</span>")
    end
)
local kbd_widget = wibox.container.background(kbdwidget)
kbd_widget.bgimage=theme.vwd

-- Chrome_button
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
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 17, bg = theme.bg_normal, fg = theme.fg_normal })

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
            vwl,
            kbd_widget,
            -- Volume
            vwc,
            vol_icon,
            volume_widget,
            -- Fs widget
            vwc,
            fs_icon,
            fs_widget,
            -- Temp
            vwc,
            temp_icon,
            temp_widget,
            -- CPU widget
            vwc,
            cpu_icon,
            cpu_widget,
            -- Mem widget
            vwc,
            mem_icon,
            mem_widget,
            -- Battery widget
            vwc,
            bat_icon,
            bat_widget,
            bat.widget,
            -- Clock
            vwc,
            clock_icon,
            clock_widget,
            -- Layout box
            s.mylayoutbox,
        },
    }
end

return theme
