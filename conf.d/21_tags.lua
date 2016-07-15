-- Standard awesome library
local awful = require("awful")
local naughty = require("naughty")
-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags = {}
--for s = 1, screen.count() do
    -- Each screen has its own tag table.
--    tags[s] = awful.tag({ 1, 2, 3, 4, 5, 6, 7, 8, 9 }, s, layouts[1])
--end
-- }}}
mytags = {}
for i = 1, screen.count() do
  mytags[i] = {}
end
for i = 1, 10 do
  local s = 1 + i % screen.count()
  table.insert(mytags[s], i)
end

for s = 1, screen.count() do
  -- Each screen has its own tag table.
  tags[s] = awful.tag(mytags[s], s, layouts[1])
  for i,tag in pairs(tags[s]) do
    naughty.notify({
      text = type(tag.name)
    })
    all_tags[tag.name] = tag
  end
end
