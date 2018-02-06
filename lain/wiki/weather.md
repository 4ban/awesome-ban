## Usage

[Read here.](https://github.com/lcpz/lain/wiki/Widgets#usage)

### Description

Provides current weather status widgets and X-days forecast popup notifications.

Powered by [OpenWeatherMap](http://openweathermap.org/api) API.

By default, it uses [current](http://openweathermap.org/current) for current weather data and [forecast16](http://openweathermap.org/forecast16) for forecasts.

```lua
local myweather = lain.widget.weather()
```

## Input table

Variable | Meaning | Type | Default
--- | --- | --- | ---
`timeout` | Refresh timeout seconds for current weather status | number | 900 (15 min)
`timeout_forecast` | Refresh timeout seconds for forecast notification | number | 86400 (24 hrs)
`current_call` | Command to fetch weather status data from the API | string | see `default_current_call` below
`forecast_call` | Command to fetch forecast data from the API | string | see `default_forecast_call` below
`city_id` | API city code | number | not set
`units` | Temperature units system | string | "metric"
`lang` | API data localization | string | "en"
`cnt` | Forecast days interval | number | 5
`date_cmd` | Forecast notification format style | string | "date -u -d @%d +'%%a %%d'"
`icons_path` | Icons path | string | `lain/icons/openweathermap`
`notification_preset` | Preset for notifications | table | empty table
`notification_text_fun` | Function to format forecast notifications | function | see `notification_text_fun` below
`weather_na_markup` | Markup to be used when weather textbox is not available | text | " N/A "
`followtag` | Display the notification on currently focused screen | boolean | false
`showpopup` | Display popups with mouse hovering | string, possible values: "on", "off" | "on"
`settings` | User settings | function | empty function

- ``default_current_call``

    `"curl -s 'http://api.openweathermap.org/data/2.5/weather?id=%s&units=%s&lang=%s'"`

    You can rewrite it using any fetcher solution you like, or you can modify it in order to fetch data by city name, instead of ID: just replace `id` with `q`:

    `"curl -s 'http://api.openweathermap.org/data/2.5/weather?q=%s&units=%s&lang=%s'"`

    and set `city_id` with your city name, for instance `city_id = "London,UK"`.

- ``default_forecast_call``

    `"curl -s 'http://api.openweathermap.org/data/2.5/forecast/daily?id=%s&units=%s&lang=%s&cnt=%s'"`

    Like above.
    If you want to use [forecast5](http://openweathermap.org/forecast5), use this API call string:
    `http://api.openweathermap.org/data/2.5/forecast?id=%s&units=%s&lang=%s&cnt=%s`

- ``city_id``

    An integer that defines the OpenWeatherMap ID code of your city.
    To obtain it go to [OpenWeatherMap](http://openweathermap.org/) and query for your city in the top search bar. The link will look like this:

        http://openweathermap.org/city/2643743

    your `city_id` is the number at the end.

- ``units``

    - For temperature in Fahrenheit use `units = "imperial"`
    - For temperature in Celsius use `units = "metric"` (Lain default)
    - For temperature in Kelvin use `units = "standard"` (OpenWeatherMap default)

- ``lang``

    See *Multilingual Support* section [here](http://openweathermap.org/current).

- ``cnt``

    Determines how many days to show in the forecast notification. Up to 16 if you use [forecast16](http://openweathermap.org/forecast16)  (default), and up to 5 if you use [forecast5](http://openweathermap.org/forecast5).

- ``date_cmd``

    OpenWeatherMap time is in UNIX format, so this variable uses `date` to determine how each line in the forecast notification is formatted. Default looks like this:

        day #daynumber: forecast, temp_min - temp_max

    see `man date` for your customizations.

- ``icons_path``

    You can set your own icons path if you don't wish to use `lain/icons/openweathermap`. Just be sure that your icons are PNGs and named exactly like [OpenWeatherMap ones](http://openweathermap.org/weather-conditions).

- ``notification_preset``

   Notifications preset table. See [here](https://awesomewm.org/doc/api/libraries/naughty.html#notify) for the details.

- ``notification_text_fun``
   ```lua
   function (wn)
       local day = string.gsub(read_pipe(string.format(date_cmd, wn["dt"])), "\n", "")
       local tmin = math.floor(wn["temp"]["min"])
       local tmax = math.floor(wn["temp"]["max"])
       local desc = wn["weather"][1]["description"]

       return string.format("<b>%s</b>: %s, %d - %d ", day, desc, tmin, tmax)
   end
   ```
   See [here](https://github.com/lcpz/lain/issues/186#issuecomment-203400918) for a complete customization example.

- ``followtag``

   With multiple screens, the default behaviour is to show a visual notification pop-up window on the first screen. By setting `followtag` to `true` it will be shown on the currently focused tag screen.

- ``settings``

    In your `settings` function, you can use `widget` variable to refer to the textbox, and the dictionary `weather_now` to refer to data retrieved by `current_call`. The dictionary is built with [dkjson library](http://dkolf.de/src/dkjson-lua.fsl/home), and its structure is defined [here](http://openweathermap.org/weather-data).
    For instance, you can retrieve current weather status and temperature in this way:
    ```lua
    descr = weather_now["weather"][1]["description"]:lower()
    units = math.floor(weather_now["main"]["temp"])
    ```

## Output table

Variable | Meaning | Type
--- | --- | ---
`widget` | The widget | `wibox.widget.textbox`
`icon` | The icon | `wibox.widget.imagebox`
`update` | Update `widget` | function
`timer` | The widget timer | [`gears.timer`](https://awesomewm.org/doc/api/classes/gears.timer.html)
`timer_forecast` | The forecast notification timer | [`gears.timer`](https://awesomewm.org/doc/api/classes/gears.timer.html)

## Functions

You can attach the forecast notification to any widget like this:

```lua
myweather.attach(obj)
```

Hovering over ``obj`` will display the notification.

## Keybindings

You can create a keybinding for the weather popup like this:

```lua
awful.key( { "Mod1" }, "w", function () myweather.show(5) end )
```

where ``show`` argument is an integer defining timeout seconds.
