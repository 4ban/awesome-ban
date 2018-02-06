## Usage

[Read here.](https://github.com/lcpz/lain/wiki/Widgets#usage)

### Description

Monitors network interfaces and shows current traffic.

```lua
local mynet = lain.widget.net()
```

## Input table

Variable | Meaning | Type | Default
--- | --- | --- | ---
`timeout` | Refresh timeout seconds | number | 2
`iface` | Network device(s) | string (single interface) or array of strings (multiple interfaces) | autodetected
`units` | Units | number | 1024 (kilobytes)
`notify` | Display "no carrier" notifications | string | "on"
`screen` | Notifications screen | number | 1
`settings` | User settings | function | empty function

`iface` can be a string or an array of the form `{ "eth0", "eth1", ... }` containing a list of the devices to collect data on.

If more than one device is included, `net_now.sent` and `net_now.received` will contain cumulative values over all given devices.
Use `net_now.devices["eth0"]` to access `sent`, `received`, `state` or `carrier` per device.

Possible alternative values for `units` are 1 (byte) or multiple of 1024: 1024^2 (mb), 1024^3 (gb), and so on.

If `notify = "off"` is set, the widget won't display a notification when there's no carrier.

`settings` can use the following `iface` related strings:

- `net_now.carrier` ("0", "1");
- `net_now.state` ("up", "down");
- `net_now.sent` and `net_now.received` (numbers) will be the sum across all specified interfaces;
- `net_now.devices["interface"]` contains the same attributes as the old api for each interface. More on this in the "Multiple devices" section below.

For compatibility reasons, if multiple devices are given, `net_now.carrier` and `net_now.state` correspond to the last interface in the iface array and should not be relied upon (deprecated).

## Output table

Variable | Meaning | Type
--- | --- | ---
`widget` | The widget | `wibox.widget.textbox`
`update` | Update `widget` | function

## Notes

### Setting `iface` manually

If the widget [spawns a "no carrier" notification and you are sure to have an active network device](https://github.com/lcpz/lain/issues/102), then autodetection is probably not working. This may due to [your user privileges](https://github.com/lcpz/lain/issues/102#issuecomment-246470526). In this case you can set `iface` manually. You can see which device is **UP,LOWER_UP** with the following command:

```shell
ip link show
```

### Two widgets for upload/download rates from the same `iface`

```lua
local mynetdown = wibox.widget.textbox()
local mynetup = lain.widgets.net {
    settings = function()
        widget:set_markup(net_now.sent)
        netdowninfo:set_markup(net_now.received)
    end
}
```