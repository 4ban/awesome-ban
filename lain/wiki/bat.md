## Usage

[Read here.](https://github.com/lcpz/lain/wiki/Widgets#usage)

### Description

Shows the remaining time and percentage capacity of your laptop battery, as well as
the current wattage. Multiple batteries are supported.

Displays a notification when battery is low or critical.

```lua
local mybattery = lain.widget.bat()
```

## Input table

Variable | Meaning | Type | Default
--- | --- | --- | ---
`timeout` | Refresh timeout seconds | number | 30
`battery` | Single battery id | string | "BAT0"
`batteries` | Multiple batteries id table | table of strings | `{"BAT0"}`
`ac` | AC | string | "AC0"
`notify` | Show notification popups | string | "on"
`n_perc` | Percentages assumed for critical and low battery levels | table of integers | `{5, 15}`
`settings` | User settings | function | empty function

You only have to define one between `battery` and `batteries`.

If you have one battery, you can either use `args.battery = "BAT*"` or `args.batteries = {"BAT*"}`. Of course, if you have multiple batteries, you need to use the latter option.

To disable warning notifications, set `notify` to `"off"`.

`settings` can use the `bat_now` table, which contains the following strings:

- `status`, battery status ("N/A", "Discharging", "Charging", "Full");
- `n_status[i]`, i-th battery status (like above);
- `ac_status`, AC-plug flag (0 if cable is unplugged, 1 if plugged, "N/A" otherwise);
- `perc`, total charge percentage (integer between 0 and 100 or "N/A");
- `n_perc`, i-th battery charge percentage (like above);
- `time`, time remaining until charge if charging, until discharge if discharging (HH:SS string or "N/A");
- `watt`, battery watts (float with 2 decimals).

and can modify the following two tables, which will be the preset for the naughty notifications:
* `bat_notification_low_preset`(used if battery charge level <= 15)
* `bat_notification_critical_preset` (used if battery charge level <= 5)

Check [here](https://awesomewm.org/doc/api/libraries/naughty.html#notify) for the list of variables they can contain. Default definitions:

```lua
bat_notification_low_preset = {
        title = "Battery low",
        text = "Plug the cable!",
        timeout = 15,
        fg = "#202020",
        bg = "#CDCDCD"
}
```
```lua
bat_notification_critical_preset = {
        title = "Battery exhausted",
        text = "Shutdown imminent",
        timeout = 15,
        fg = "#000000",
        bg = "#FFFFFF"
}
```

## Output table

Variable | Meaning | Type
--- | --- | ---
`widget` | The widget | `wibox.widget.textbox`
`update` | Update `widget` | function

The `update` function can be used to refresh the widget before `timeout` expires.

## Notes
* Another common identifier for `ac` is `ACAD`.
* If your widget is always on "N/A" with default settings, and you have a single battery, then `BAT0` is not your battery file. Locate the right one in  `/sys/class/power_supply/` and set `battery` properly. For instance, with `BAT1`:

    ```lua
    batwidget = lain.widget.bat({
        battery = "BAT1",
    -- [...]
    })

    ```
* Alternatively, you can try the `upower` widget [here](https://awesomewm.org/recipes/watch).
