## Usage

[Read here.](https://github.com/lcpz/lain/wiki/Widgets#usage)

### Description

A battery widget that works with Lenovo ThinkPad laptops using [tp_smapi](http://www.thinkwiki.org/wiki/Tp_smapi).

Includes hover notification with more details.

```lua
local mytpbat = lain.widget.contrib.tpbat()
```

## Input table

Variable | Meaning | Type | Default
--- | --- | --- | ---
`timeout` | Refresh timeout seconds | number | 30
`battery` | Single battery id | string | "BAT0"
`settings` | User settings | function | empty function

## Output table

Variable | Meaning | Type
--- | --- | ---
`widget` | The widget | `wibox.widget.textbox`
`update` | Update `widget` | function

The `update` function can be used to refresh the widget before `timeout` expires.