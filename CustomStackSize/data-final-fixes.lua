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
