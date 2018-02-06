## Usage

[Read here.](https://github.com/lcpz/lain/wiki/Widgets#usage)

### Description

Shows disk space usage for a set partition.

Displays a notification when the partition is full or has low space.

```lua
local mypartition = lain.widget.fs()
```

## Input table

Variable | Meaning | Type | Default
--- | --- | --- | ---
`timeout` | Refresh timeout seconds -| number | 600
`partition` | Partition to monitor | string | "/"
`options` | Additional options to pass to [`dfs`](https://github.com/lcpz/lain/blob/master/scripts/dfs) | string, in the form `--type='fstype' | --exclude-type='fstype'` | nil
`notification_preset` | Notification preset | table | See [default `notification_preset`](https://github.com/lcpz/lain/wiki/fs#default-notification_preset)
`followtag` | Display the notification on currently focused screen | boolean | false
`notify` | Display notifications | string | "on"
`showpopup` | Display popups with mouse hovering | string, possible values: "on", "off" | "on"
`settings` | User settings | function | empty function

`settings` can use the following `partition` related strings:

* `fs_now.size_mb`
* `fs_now.size_gb`
* `fs_now.used`
* `fs_now.used_mb`
* `fs_now.used_gb`
* `fs_now.available`
* `fs_now.available_mb`
* `fs_now.available_gb`

Within `settings`, you can obtain other partition values from internal `fs_info` table. For each partition, the following indexes are available:

*  `fs_info[other_partition .. " size_mb"]`
*  `fs_info[other_partition .. " size_gb"]`
*  `fs_info[other_partition .. " used_p"]`
*  `fs_info[other_partition .. " used_mb"]`
*  `fs_info[other_partition .. " used_gb"]`
*  `fs_info[other_partition .. " avail_p"]`
*  `fs_info[other_partition .. " avail_mb"]`
*  `fs_info[other_partition .. " avail_gb"]`

just like the variables of `fs_now`. Example:

```lua
-- shows root and home partitions percentage used
local fsroothome = lain.widget.fs({
    settings  = function()
        local home_used = tonumber(fs_info["/home used_p"]) or 0
        widget:set_text("/ " .. fs_now.used .. "% | /home " .. home_used .. "% ")
    end
})
```

Also, `settings` can modify `notification_preset` table. This table will be the preset for the naughty notifications. Check [here](https://awesomewm.org/doc/api/libraries/naughty.html#notify) for the list of variables it can contain.

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
`widget` | The widget | `wibox.widget.textbox`
`show` | The notification | function

You can display the notification with a key binding like this:

```lua
awful.key({ altkey }, "h", function () mypartition.show(seconds, scr) end),
```

where ``altkey = "Mod1"`` and ``show`` arguments, both optionals, are:

* `seconds`, notification time in seconds
* `scr`, screen which to display the notification in

## Note

Naughty notifications require `notification_preset.font` to be **monospaced**, in order to correctly display the output.