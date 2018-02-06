## Usage

[Read here.](https://github.com/lcpz/lain/wiki/Widgets#usage)

### Description

Shows mails count fetching over IMAP.

```lua
local myimap = lain.widget.imap(args)
```

New mails are notified like this:

	+--------------------------------------------+
	| +---+                                      |
	| |\ /| donald@disney.org has 3 new messages |
	| +---+                                      |
	+--------------------------------------------+

## Input table

Required parameters are:

Variable | Meaning | Type
--- | --- | ---
`server` | Mail server | string
`mail` | User mail | string
`password` | User password | string

while the optional are:

Variable | Meaning | Type | Default
--- | --- | --- | ---
`port` | IMAP port | number | 993
`timeout` | Refresh timeout seconds | number | 60
`is_plain` | Define whether `password` is a plain password (true) or a command that retrieves it (false) | boolean | false
`followtag` | Notification behaviour | boolean | false
`notify` | Show notification popups | string | "on"
`settings` | User settings | function | empty function

The reason why `is_plain` is false by default is to discourage the habit of storing passwords in plain.

So, you can set your password in plain like this:

```lua
myimapcheck = lain.widget.imap({
    is_plain = true,
    password = "mymailpassword",
    -- [...]
})
```

and you'll have the same security provided by `~/.netrc`.

**Or you can use a password manager**, like [spm](https://notabug.org/kl3/spm) or [pass](https://www.passwordstore.org):

```lua
myimapcheck = lain.widget.imap({
    password = function()
        -- return the output of "spm show mymail"
    end,
    -- [...]
})
```

When `is_plain == false` (default), `password` can be either a string, a table or a function: the widget will execute it asynchronously in the first two cases.

`settings` can use the value `mailcount`, an integer greater or equal to zero, and can modify `mail_notification_preset` table, which will be the preset for the naughty notifications. Check [here](https://awesomewm.org/apidoc/libraries/naughty.html#notify) for the list of variables it can contain. Default definition:

```lua
mail_notification _preset = {
    icon = lain/icons/mail.png,
    position = "top_left"
}
```

Note that `mailcount` is 0 either if there are no new mails or credentials are invalid, so make sure you get the right settings.

With multiple screens, the default behaviour is to show a visual notification pop-up window on the first screen. By setting `followtag` to `true` it will be shown on the currently focused tag screen.

You can have multiple instances of this widget at the same time.

## Output table

Variable | Meaning | Type
--- | --- | ---
`widget` | The widget | `wibox.widget.textbox`
`update` | Update `widget` | function
`timer` | The widget timer | [`gears.timer`](https://awesomewm.org/doc/api/classes/gears.timer.html)

The `update` function can be used to refresh the widget before `timeout` expires.

You can use `timer` to start/stop the widget as you like.
