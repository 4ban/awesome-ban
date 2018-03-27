# Awesome WM 4.x Ban theme

## Description
A theme for the Awesome window manager, version 4.x.

Inspired by [awesome-copycats](https://github.com/lcpz/awesome-copycats)

## Gallery

### darkblue theme

![](https://github.com/4ban/awesome-ban/raw/master/themes/darkblue/screenshots/screen1.png)
---

#### With compton and rofi
![](https://github.com/4ban/awesome-ban/raw/master/themes/darkblue/screenshots/screen1.5.png)
---

![](https://github.com/4ban/awesome-ban/raw/master/themes/darkblue/screenshots/screen2.png)
---

![](https://github.com/4ban/awesome-ban/raw/master/themes/darkblue/screenshots/screen3.png)
---

![](https://github.com/4ban/awesome-ban/raw/master/themes/darkblue/screenshots/screen4.png)
---

![](https://github.com/4ban/awesome-ban/raw/master/themes/darkblue/screenshots/screen5.png)
---

### yellow theme

![](https://github.com/4ban/awesome-ban/raw/master/themes/yellow/screenshots/screen1.png)
---

![](https://github.com/4ban/awesome-ban/raw/master/themes/yellow/screenshots/screen2.png)
---

![](https://github.com/4ban/awesome-ban/raw/master/themes/yellow/screenshots/screen3.png)
---

## Features

* Enable/Disable titlebar for all windows or selectively
* Scratchpads which allow you hides window in the background (not minimized, just hidden) and invoke it whenever you need it on current tag (like yeahconsole, quake)
* Autostart background programs
* Custom layouts

## Requirements
Complements are provided by [Lain](https://github.com/lcpz/lain), [freedesktop](https://github.com/lcpz/freedesktop) and [scratch](https://github.com/proteansec/awesome-scratch).

Fonts are `Terminus, Tamzen, Meslo LGS and Tamsyn`

GTK3 theme - `Arc-Dark`

GTK3 icon theme - `Paper`

Additional default software used:

`dmenu2 urxvt rofi nm-applet xsel nm-applet yeahconsole tmux i3lock-color-git zsh oh-my-zsh-git i3lock-fancy-git kbdd xautolock`

Fork of [Compton](https://github.com/tryone144/compton) with new blur method "kawase"

Note: compton.conf, .Xresources , colorscheme for .Xresources or ranger colorscheme on request.

## Installation

`git clone --recursive https://github.com/4ban/awesome-ban.git`

`mv -bv awesome-ban/* ~/.config/awesome; rm -rf awesome-ban`

`cp ~/.config/awesome/rc-default.lua ~/.config/awesome/rc.lua`

## Usage

First open your `rc.lua` in text editor and setup the configuration:

* Define autostart programs
* Set variables
* Change default hotkeys
* Setup layouts
* Set windows rules

##### F.A.Q.

Note that Lain, Freedesktop and Scratch added as submodules, for cloning repo you must use command:
```
git clone --recursive https://github.com/4ban/awesome-ban.git
```
