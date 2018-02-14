# Awesome WM 4.x Ban theme

## Description
A theme for the Awesome window manager, version 4.x.

Inspired by [awesome-copycats](https://github.com/lcpz/awesome-copycats)

## Gallery

![](https://github.com/4ban/awesome-ban/raw/master/themes/ban/screenshots/screen1.png)
---

![](https://github.com/4ban/awesome-ban/raw/master/themes/ban/screenshots/screen2.png)
---

![](https://github.com/4ban/awesome-ban/raw/master/themes/ban/screenshots/screen3.png)
---

![](https://github.com/4ban/awesome-ban/raw/master/themes/ban/screenshots/screen4.png)
---

## Features

* Enable/Disable titlebar
* Scratchpads which allow you hide/unhide windows
* 
* 

## Installation

`git clone --recursive https://github.com/4ban/awesome-ban.git`

`mv -bv awesome-ban/* ~/.config/awesome; rm -rf awesome-ban`

## Requirements
Complements are provided by [Lain](https://github.com/lcpz/lain) and [freedesktop](https://github.com/lcpz/freedesktop) and [scratch](https://github.com/proteansec/awesome-scratch).

Fonts are `Terminus, Tamzen, Meslo LGS and Tamsyn`

GTK3 theme - `Arc-Dark`

GTK3 icon theme - `Paper`

Additional default software used:

`scrot mpd mpc dmenu xsel nm-applet i3lock kbdd xautolock`

## Additional

#### i3lock.

Create a script as described below.

```
$ touch ~/.config/scripts/lock.sh
# chmod +x ~/.config/scripts/lock.sh
```

File lock.sh:
```
#!/bin/bash
ICON=$HOME/.config/lock.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
i3lock -u -i $TMPBG
```

`.config/lock.png` is a picture of a locker with transparent background.

##### F.A.Q.

Note that Lain, Freedesktop and Scratch added as submodules, for cloning repo you must use command:
```
git clone --recursive https://github.com/4ban/awesome-ban.git
```
