-- Standard awesome library
local awful = require("awful")
local naughty = require("naughty")
tags = {}
mytags = {}
for i = 1, screen.count() do
  mytags[i] = {}
end
for i = 1, 10 do
  local s = 1 + i % screen.count()
  table.insert(mytags[s], i)
end
all_tags = {}
for s = 1, screen.count() do
  tags[s] = awful.tag(mytags[s], s, {layouts[9],layouts[9],layouts[9],layouts[1],layouts[1]})
  for i,tag in pairs(tags[s]) do
    naughty.notify({
      text = type(tag.name)
    })
    all_tags[tag.name] = tag
  end
end
