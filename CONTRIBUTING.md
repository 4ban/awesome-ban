# Contributing to awesome-ban

## Tips for bug reports

* Was this issue already reported?  Please do a quick search.

* Maybe the problem is solved in the current master branch already?

  Simply clone awesome-pro with `git clone --recursive https://github.com/4ban/awesome-ban.git` or

  download the git version via https://github.com/4ban/awesome-ban/archive/master.zip

  and run `mv -bv awesome-ban/* ~/.config/awesome; rm -rf awesome-ban` directly to find out.

* You can obtain much better error messages with starting it in sandbox by Xephyr: 

`Xephyr :5 -ac -br -noreset -screen 1500x800 & sleep 1; DISPLAY=:5 awesome -c /path/to/awesome-ban/rc.lua`. 

Also change related paths in your rc.lua and theme.lua.

Thank you!
