local function set_stack(item_names, setting_name)
  local size = settings.startup[setting_name].value
  for _, item in pairs(item_names) do
    if data.raw.item[item] then
      data.raw.item[item].stack_size = size
    end
  end
end

set_stack({"stone-brick"}, "stack-size-brick")
set_stack({"concrete", "hazard-concrete"}, "stack-size-concrete")
set_stack({"refined-concrete", "refined-hazard-concrete"}, "stack-size-refined-concrete")
set_stack({"landfill"}, "stack-size-landfill")
set_stack({"wood"}, "stack-size-wood")
set_stack({"foundation"}, "stack-size-foundation")
set_stack({"ice-platform"}, "stack-size-ice-platform")
set_stack({"artificial-jellynut-soil"}, "stack-size-jellynut-soil")
set_stack({"artificial-yumako-soil"}, "stack-size-yumako-soil")