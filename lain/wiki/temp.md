## Usage

[Read here.](https://github.com/lcpz/lain/wiki/Widgets#usage)

### Description

Shows the current CPU temperature.

```lua
local mytemp = lain.widget.temp()
```

## Input table

Variable | Meaning | Type | Default
--- | --- | --- | ---
`timeout` | Refresh timeout seconds | number | 2
`tempfile` | Path of file which stores core temperature value | string | "/sys/class/thermal/thermal_zone0/temp"
`settings` | User settings | function | empty function

`settings` can use the string `coretemp_now`, which means current core temperature, expressed in Celsius (linux standard).

## Output table

Variable | Meaning | Type
--- | --- | ---
`widget` | The widget | `wibox.widget.textbox`
`update` | Update `widget` | function

## Note

Depending on the architecture, note that your temp files location [might vary](https://github.com/lcpz/lain/issues/84#issuecomment-72751763).