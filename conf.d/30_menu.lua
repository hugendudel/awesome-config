-- Standard awesome library
local awful = require("awful")
-- Theme handling library
local beautiful = require("beautiful")
-- Menu library
local menubar = require("menubar")
-- {{{ Menu
-- Create a laucher widget and a main menu

mymainmenu = awful.menu({ items = {
  { "noob noob", terminal .. " -e 'sl -alF'" },
  { "smile!", "google-chrome-stable --app=https://www.youtube.com/embed/OaSEGZ3Xe_E"}
}})
mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon, menu = mymainmenu })

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- }}}
