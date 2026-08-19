-- Generates one startup int-setting per item from the shared stack-list table.
-- See stack-list.lua for the item definitions.

local stack_list = require("stack-list")

local settings_to_add = {}

for _, category in pairs(stack_list) do
  for index, item in pairs(category.items) do
    settings_to_add[#settings_to_add + 1] = {
      type = "int-setting",
      name = "stack-size-" .. item.name,
      setting_type = "startup",
      default_value = item.default,
      minimum_value = 1,
      maximum_value = 100000,
      -- e.g. prefix "3" + 1st item -> "3a", matching the original ordering.
      order = category.prefix .. string.char(string.byte("a") + index - 1),
    }
  end
end

settings_to_add[#settings_to_add + 1] = {
  type = "string-setting",
  name = "stack-size-custom-others",
  setting_type = "startup",
  default_value = "",
  allow_blank = true,
  -- allow_trim = false,
  order = "za",
}

data:extend(settings_to_add)
