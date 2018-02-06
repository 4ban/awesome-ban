## Usage

[Read here.](https://github.com/lcpz/lain/wiki/Widgets#usage)

### Description

Attaches a calendar notification to a widget.

This is a simpler but [faster](https://github.com/awesomeWM/awesome/issues/1861)
alternative to [`awful.widget.calendar_popup](https://awesomewm.org/doc/api/classes/awful.widget.calendar_popup.html).

```lua
local calendar = lain.widget.calendar()
```

- Left click / scroll down: switch to previous month.
- Right click / scroll up: switch to next month.

## Input table

Variable | Meaning | Type | Default
--- | --- | --- | ---
`cal` | custom call for `cal` | string | "/usr/bin/cal"
`attach_to` | Array of widgets | array | empty array
`followtag` | Display the notification on currently focused screen | boolean | false
`icons` | Path to calendar icons | string | [lain/icons/cal/white](https://github.com/lcpz/lain/tree/master)
`notification_preset` | Notification preset | table | See [default `notification_preset`](https://github.com/lcpz/lain/wiki/calendar#default-notification_preset)

You can reset `cal` any way you like (using `-w` to display weeks as well, for instance). If the current day is not highlighted, you can reset `cal` to also include the proper coloring flag. For instance, under Arch Linux it's `/usr/bin/cal --color=always`, while under Ubuntu it's `/usr/bin/cal -h`.

You can set `attach_to` as the array of widgets to which you want to attach the calendar, for instance:

```lua
lain.widget.calendar({
    `attach_to = { mywidget1, mywidget2, ...  }`,
    -- [...]
})
```

The notification will show an icon of the current day number, and output from ``cal`` with current day highlighted.

With multiple screens, the default behaviour is to show a visual notification pop-up window on the first screen. By setting `followtag` to `true` it will be shown on the currently focused tag screen.

### Default `notification_preset`

```lua
notification_preset = {
    font = "Monospace 10",
    fg   = "#FFFFFF",
    bg   = "#000000"
}
```

## Output table

Variable | Meaning | Type
--- | --- | ---
`attach` | Attach the calendar to an input widget | function
`show` | Show calendar | function
`hide` | Hide calendar | function

`attach` takes as argument the widget you want to attach the calendar to: `calendar.attach(widget)`.

## Keybindings

You can call the notification with a key binding like this:

```lua
awful.key({ altkey }, "c", function ()
    calendar:show(7)
end),
```

where ``altkey = "Mod1"`` and ``show`` argument is an optional integer, meaning timeout seconds.

You can also call it defining a notification screen with a third argument like this:

```lua
awful.key({ altkey }, "c", function ()
    calendar:show(7, 0, my_scr_number)
end),
```

## Notes

* Naughty notifications require `notification_preset.font` to be **monospaced**, in order to correctly display the output.
* In case current day is not being highlighted in notifications, try setting `cal` specifying your environment. For instance: `cal = "/usr/bin/env TERM=linux /usr/bin/cal --your-coloring-flag-here"`.
* If you want to [disable notification icon](https://github.com/lcpz/lain/pull/351), set `icons = ""` in the input table.
* In order to have [khal](https://github.com/pimutils/khal) agenda output combined with the widget you can use this script as `cal`:

    ```shell
    #!/bin/bash
    days=3 # days to show
    cal_flag="--color=always" # colorizing flag
    if [ $# -eq 0 ]; then
        awk '{max = 21}
        FNR==NR{s1[FNR]=$0; next}{s2[FNR]=$0}
        END { format = "%-" max "s\t%-" max "s\n";
        numlines=(NR-FNR)>FNR?NR-FNR:FNR;
        for (i=1; i<=numlines; i++) { printf format, s1[i]?s1[i]:"", s2[i]?s2[i]:"" }
        }' <(/usr/bin/cal $cal_flag) <(/usr/bin/khal list today $(date -d "+$days days" "+%d.%m.%Y"))
    else
        /usr/bin/cal $@
    fi
    ```
