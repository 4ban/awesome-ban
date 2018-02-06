## Usage

[Read here.](https://github.com/lcpz/lain/wiki/Widgets#usage)

### Description

Shows and controls keyboard layouts and variants using `setxkbmap`. This is a simpler but asynchronous alternative to [awful.widget.kbdlayout](https://awesomewm.org/apidoc/classes/awful.widget.keyboardlayout.html).

```lua
local mykbdlayout = lain.widget.contrib.kbdlayout()
```

Left/right click switches to next/previous keyboard layout.

## Input table

Variable | Meaning | Type | Default
--- | --- | --- | ---
`layouts` | Keyboard layouts and variants to switch between | table | **nil**
`add_us_secondary` | Whether to add `us` as a secondary layout | boolean | true
`timeout` | Refresh timeout (in seconds) | number | 10
`settings` | User settings | function | empty function

- `layouts`

    A table (array) which contains tables with keys indicating layout and (optionally) variant. This argument is **mandatory**.

- `add_us_secondary`

    A boolean controlling whether to add `us` as a secondary layout. This is needed in order for keyboard shortcuts to work in certain applications, i.e. Firefox, while using a non-US keyboard layout.

- `timeout`

    An integer which determines the interval at which the widget will be updated, in case the keyboard layout was changed by other means.

- `settings`

    A "callback" function in which the user is expected to set the text widget up. The widget itself is available as the global variable `widget`, while layout information is available as `kbdlayout_now`. `kbdlayout_now` contains two keys, `layout` containing the primary layout, and `variant`, containing the variant. If there is no variant, `variant` is `nil`.

## Output table

Variable | Meaning | Type
--- | --- | ---
`widget` | The widget (textbox) | `wibox.widget.textbox`
`update` | Function to update the widget and call `settings` | function
`set` | Function taking an index as an argument to manually set the layout given by that index | function
`next` | Change to the next layout | function
`prev` | Change to the prev layout | function

The textbox can be added to the layout via standard means.

By default, left-clicking the textbox calls `next`, and right-clicking calls `prev`. You can set up additional key- or mouse-bindings. See the example below.

## Example

```lua
-- Switch between US Dvorak and DE layouts.
mykbdlayout = lain.widget.contrib.kbdlayout({
    layouts = { { layout = "us", variant = "dvorak" },
	            { layout = "de" } },
    settings = function()
        if kbdlayout_now.variant then
            widget:set_text(string.format("%s/%s", kbdlayout_now.layout,
            kbdlayout_now.variant))
        else
            widget:set_text(kbdlayout_now.layout)
        end
    end
})

-- [...]

-- Add key binding (traditional Alt+Shift switching)
awful.key({ "Mod1" }, "Shift_L", function () mykbdlayout.next() end),
```