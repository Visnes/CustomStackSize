-- Applies the configured stack sizes onto item prototypes.
-- Runs in data-final-fixes so it overrides the base game and most other mods.
-- See stack-list.lua for the item definitions.

local stack_list = require("stack-list")

-- Items live under different prototype types (e.g. science packs are "tool",
-- raw fish is "capsule"), so search each item-like table for the prototype.
local ITEM_TYPES = {
  "item", "tool", "capsule", "ammo", "module",
  "item-with-entity-data", "rail-planner", "fish", "armor", "gun", "repair-tool",
}

local function find_proto(name)
  for _, t in pairs(ITEM_TYPES) do
    local tbl = data.raw[t]
    if tbl and tbl[name] then
      return tbl[name]
    end
  end
end

for _, category in pairs(stack_list) do
  for _, item in pairs(category.items) do
    local size = settings.startup["stack-size-" .. item.name].value
    for _, proto_name in pairs(item.prototypes) do
      local proto = find_proto(proto_name)
      if proto then
        proto.stack_size = size
      end
    end
  end
end

-- LUA doesn't have a built-in way to split strings, so...
-- Source - https://stackoverflow.com/a/7615129
-- Posted by user973713, modified by community. See post 'Timeline' for change history
-- Retrieved 2026-08-20, License - CC BY-SA 4.0
function strsplit(inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  local t = {}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    table.insert(t, str)
  end
  return t
end

-- Custom user-added rules
for _, token in pairs(strsplit(settings.startup["stack-size-custom-others"].value, ";")) do
  local proto_name, ssize = table.unpack(strsplit(token, "="))
  if ssize then
    local size = tonumber(ssize)
    if size >= 1 and size <= 100000 then
      local proto = find_proto(proto_name)
      if proto then
        proto.stack_size = size
      end
    end
  end
end