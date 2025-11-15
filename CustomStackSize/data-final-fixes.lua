local function set_stack(item_names, setting_name)
  local size = settings.startup[setting_name].value
  for _, item in pairs(item_names) do
    if data.raw.item[item] then
      data.raw.item[item].stack_size = size
    end
  end
end

-- Terrain items
set_stack({"stone-brick"}, "stack-size-brick")
set_stack({"concrete", "hazard-concrete"}, "stack-size-concrete")
set_stack({"refined-concrete", "refined-hazard-concrete"}, "stack-size-refined-concrete")
set_stack({"landfill"}, "stack-size-landfill")
set_stack({"wood"}, "stack-size-wood")
set_stack({"foundation"}, "stack-size-foundation")
set_stack({"ice-platform"}, "stack-size-ice-platform")
set_stack({"artificial-jellynut-soil"}, "stack-size-jellynut-soil")
set_stack({"artificial-yumako-soil"}, "stack-size-yumako-soil")

-- Raw resources
set_stack({"iron-ore"}, "stack-size-iron-ore")
set_stack({"copper-ore"}, "stack-size-copper-ore")
set_stack({"coal"}, "stack-size-coal")
set_stack({"stone"}, "stack-size-stone")
set_stack({"uranium-ore"}, "stack-size-uranium-ore")
set_stack({"raw-fish"}, "stack-size-raw-fish")
set_stack({"ice"}, "stack-size-ice")

-- Materials
set_stack({"iron-plate"}, "stack-size-iron-plate")
set_stack({"copper-plate"}, "stack-size-copper-plate")
set_stack({"steel-plate"}, "stack-size-steel-plate")
set_stack({"solid-fuel"}, "stack-size-solid-fuel")
set_stack({"plastic-bar"}, "stack-size-plastic-bar")
set_stack({"sulfur"}, "stack-size-sulfur")
set_stack({"battery"}, "stack-size-battery")
set_stack({"explosives"}, "stack-size-explosives")
set_stack({"carbon"}, "stack-size-carbon")

-- Uranium processing
set_stack({"uranium-235"}, "stack-size-uranium-235")
set_stack({"uranium-238"}, "stack-size-uranium-238")
set_stack({"uranium-fuel-cell"}, "stack-size-uranium-fuel-cell")
set_stack({"depleted-uranium-fuel-cell"}, "stack-size-depleted-uranium-fuel-cell")
set_stack({"nuclear-fuel"}, "stack-size-nuclear-fuel")

-- Vulcanus
set_stack({"calcite"}, "stack-size-calcite")
set_stack({"tungsten-ore"}, "stack-size-tungsten-ore")
set_stack({"tungsten-carbide"}, "stack-size-tungsten-carbide")
set_stack({"tungsten-plate"}, "stack-size-tungsten-plate")

-- Fulgora
set_stack({"scrap"}, "stack-size-scrap")
set_stack({"holmium-ore"}, "stack-size-holmium-ore")
set_stack({"holmium-plate"}, "stack-size-holmium-plate")
set_stack({"superconductor"}, "stack-size-superconductor")
set_stack({"supercapacitor"}, "stack-size-supercapacitor")

-- Gleba
set_stack({"yumako-seed"}, "stack-size-yumako-seed")
set_stack({"jellynut-seed"}, "stack-size-jellynut-seed")
set_stack({"tree-seed"}, "stack-size-tree-seed")
set_stack({"yumako"}, "stack-size-yumako")
set_stack({"jellynut"}, "stack-size-jellynut")
set_stack({"iron-bacteria"}, "stack-size-iron-bacteria")
set_stack({"copper-bacteria"}, "stack-size-copper-bacteria")
set_stack({"spoilage"}, "stack-size-spoilage")
set_stack({"nutrients"}, "stack-size-nutrients")
set_stack({"bioflux"}, "stack-size-bioflux")
set_stack({"yumako-mash"}, "stack-size-yumako-mash")
set_stack({"jelly"}, "stack-size-jelly")
set_stack({"carbon-fiber"}, "stack-size-carbon-fiber")
set_stack({"biter-egg"}, "stack-size-biter-egg")
set_stack({"pentapod-egg"}, "stack-size-pentapod-egg")

-- Aquilo
set_stack({"lithium"}, "stack-size-lithium")
set_stack({"lithium-plate"}, "stack-size-lithium-plate")
set_stack({"quantum-processor"}, "stack-size-quantum-processor")
set_stack({"fusion-power-cell"}, "stack-size-fusion-power-cell")