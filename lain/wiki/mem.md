## Usage

[Read here.](https://github.com/lcpz/lain/wiki/Widgets#usage)

### Description

Shows memory status (in MiB).

```lua
local mymem = lain.widget.mem()
```

## Input table

Variable | Meaning | Type | Default
--- | --- | --- | ---
`timeout` | Refresh timeout seconds | number | 2
`settings` | User settings | function | empty function

in `settings` you can use the following variables:

Variable | Meaning | Type
--- | --- | ---
`mem_now.used` | Memory used (MiB) | string
`mem_now.swapused` | Swap memory used (MiB) | string
`mem_now.perc` | Memory percentage | int

## Output table

Variable | Meaning | Type
--- | --- | ---
`widget` | The widget | `wibox.widget.textbox`
`update` | Update `widget` | function