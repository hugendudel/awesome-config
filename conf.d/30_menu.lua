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
  { "smile!", "google-chrome-stable --start-fullscreen --kiosk --app=https://www.youtube.com/embed/OaSEGZ3Xe_E?autoplay=1"}
}})
mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon, menu = mymainmenu })

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- }}}
