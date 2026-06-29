-- Single source of truth for every customizable stack size.
--
-- Both settings.lua (settings stage) and data-final-fixes.lua (data stage)
-- require() this module, so each item is declared in exactly one place.
--
-- Per item:
--   name       = setting suffix. The setting is "stack-size-<name>" and the
--                locale keys in locale/en/settings.cfg must match that id.
--   default    = vanilla stack size (so a fresh install changes nothing).
--   prototypes = one or more real prototype ids the setting writes to.
--
-- Per category:
--   category   = label prefix shown in the UI ("Category -> Item").
--   prefix     = sort prefix; settings.lua appends a, b, c, ... per item to
--                build the `order` string, so categories stay grouped.
--
-- Order prefixes use digits 1-8 then letters 9, a, b. Factorio sorts `order`
-- strings lexically and digits sort before letters, so the lettered groups
-- appear below the numbered ones.

return {
  { category = "Terrain", prefix = "1", items = {
    { name = "brick",            default = 100, prototypes = {"stone-brick"} },
    { name = "concrete",         default = 100, prototypes = {"concrete", "hazard-concrete"} },
    { name = "refined-concrete", default = 100, prototypes = {"refined-concrete", "refined-hazard-concrete"} },
    { name = "landfill",         default = 100, prototypes = {"landfill"} },
    { name = "wood",             default = 100, prototypes = {"wood"} },
    { name = "foundation",       default =  50, prototypes = {"foundation"} },
    { name = "ice-platform",     default = 100, prototypes = {"ice-platform"} },
    { name = "jellynut-soil",    default = 100, prototypes = {"artificial-jellynut-soil"} },
    { name = "yumako-soil",      default = 100, prototypes = {"artificial-yumako-soil"} },
  }},

  { category = "Raw Resources", prefix = "2", items = {
    { name = "iron-ore",    default = 50,  prototypes = {"iron-ore"} },
    { name = "copper-ore",  default = 50,  prototypes = {"copper-ore"} },
    { name = "coal",        default = 50,  prototypes = {"coal"} },
    { name = "stone",       default = 50,  prototypes = {"stone"} },
    { name = "uranium-ore", default = 50,  prototypes = {"uranium-ore"} },
    { name = "raw-fish",    default = 100, prototypes = {"raw-fish"} },
    { name = "ice",         default = 50,  prototypes = {"ice"} },
  }},

  { category = "Materials", prefix = "3", items = {
    { name = "iron-plate",   default = 100, prototypes = {"iron-plate"} },
    { name = "copper-plate", default = 100, prototypes = {"copper-plate"} },
    { name = "steel-plate",  default = 100, prototypes = {"steel-plate"} },
    { name = "solid-fuel",   default = 50,  prototypes = {"solid-fuel"} },
    { name = "plastic-bar",  default = 100, prototypes = {"plastic-bar"} },
    { name = "sulfur",       default = 50,  prototypes = {"sulfur"} },
    { name = "battery",      default = 200, prototypes = {"battery"} },
    { name = "explosives",   default = 50,  prototypes = {"explosives"} },
    { name = "carbon",       default = 50,  prototypes = {"carbon"} },
  }},

  { category = "Uranium", prefix = "4", items = {
    { name = "uranium-235",                default = 100, prototypes = {"uranium-235"} },
    { name = "uranium-238",                default = 100, prototypes = {"uranium-238"} },
    { name = "uranium-fuel-cell",          default = 50,  prototypes = {"uranium-fuel-cell"} },
    { name = "depleted-uranium-fuel-cell", default = 50,  prototypes = {"depleted-uranium-fuel-cell"} },
    { name = "nuclear-fuel",               default = 1,   prototypes = {"nuclear-fuel"} },
  }},

  { category = "Vulcanus", prefix = "5", items = {
    { name = "calcite",          default = 50, prototypes = {"calcite"} },
    { name = "tungsten-ore",     default = 50, prototypes = {"tungsten-ore"} },
    { name = "tungsten-carbide", default = 50, prototypes = {"tungsten-carbide"} },
    { name = "tungsten-plate",   default = 50, prototypes = {"tungsten-plate"} },
  }},

  { category = "Fulgora", prefix = "6", items = {
    { name = "scrap",          default = 50,  prototypes = {"scrap"} },
    { name = "holmium-ore",    default = 50,  prototypes = {"holmium-ore"} },
    { name = "holmium-plate",  default = 100, prototypes = {"holmium-plate"} },
    { name = "superconductor", default = 200, prototypes = {"superconductor"} },
    { name = "supercapacitor", default = 100, prototypes = {"supercapacitor"} },
  }},

  { category = "Gleba", prefix = "7", items = {
    { name = "yumako-seed",     default = 10,  prototypes = {"yumako-seed"} },
    { name = "jellynut-seed",   default = 10,  prototypes = {"jellynut-seed"} },
    { name = "tree-seed",       default = 10,  prototypes = {"tree-seed"} },
    { name = "yumako",          default = 50,  prototypes = {"yumako"} },
    { name = "jellynut",        default = 50,  prototypes = {"jellynut"} },
    { name = "iron-bacteria",   default = 50,  prototypes = {"iron-bacteria"} },
    { name = "copper-bacteria", default = 50,  prototypes = {"copper-bacteria"} },
    { name = "spoilage",        default = 200, prototypes = {"spoilage"} },
    { name = "nutrients",       default = 100, prototypes = {"nutrients"} },
    { name = "bioflux",         default = 100, prototypes = {"bioflux"} },
    { name = "yumako-mash",     default = 100, prototypes = {"yumako-mash"} },
    { name = "jelly",           default = 100, prototypes = {"jelly"} },
    { name = "carbon-fiber",    default = 100, prototypes = {"carbon-fiber"} },
    { name = "biter-egg",       default = 100, prototypes = {"biter-egg"} },
    { name = "pentapod-egg",    default = 20,  prototypes = {"pentapod-egg"} },
  }},

  { category = "Aquilo", prefix = "8", items = {
    { name = "lithium",           default = 50,  prototypes = {"lithium"} },
    { name = "lithium-plate",     default = 100, prototypes = {"lithium-plate"} },
    { name = "quantum-processor", default = 100, prototypes = {"quantum-processor"} },
    { name = "fusion-power-cell", default = 50,  prototypes = {"fusion-power-cell"} },
  }},

  { category = "Intermediates", prefix = "9", items = {
    { name = "copper-cable",          default = 200, prototypes = {"copper-cable"} },
    { name = "iron-stick",            default = 100, prototypes = {"iron-stick"} },
    { name = "iron-gear-wheel",       default = 100, prototypes = {"iron-gear-wheel"} },
    { name = "electronic-circuit",    default = 200, prototypes = {"electronic-circuit"} },
    { name = "advanced-circuit",      default = 200, prototypes = {"advanced-circuit"} },
    { name = "processing-unit",       default = 100, prototypes = {"processing-unit"} },
    { name = "engine-unit",           default = 50,  prototypes = {"engine-unit"} },
    { name = "electric-engine-unit",  default = 50,  prototypes = {"electric-engine-unit"} },
    { name = "flying-robot-frame",    default = 50,  prototypes = {"flying-robot-frame"} },
    { name = "low-density-structure", default = 50,  prototypes = {"low-density-structure"} },
    { name = "rocket-fuel",           default = 20,  prototypes = {"rocket-fuel"} },
  }},

  -- Science packs are prototype type "tool", handled by the multi-type lookup
  -- in data-final-fixes.lua.
  { category = "Science", prefix = "a", items = {
    { name = "automation-science-pack",      default = 200, prototypes = {"automation-science-pack"} },
    { name = "logistic-science-pack",        default = 200, prototypes = {"logistic-science-pack"} },
    { name = "military-science-pack",        default = 200, prototypes = {"military-science-pack"} },
    { name = "chemical-science-pack",        default = 200, prototypes = {"chemical-science-pack"} },
    { name = "production-science-pack",      default = 200, prototypes = {"production-science-pack"} },
    { name = "utility-science-pack",         default = 200, prototypes = {"utility-science-pack"} },
    { name = "space-science-pack",           default = 200, prototypes = {"space-science-pack"} },
    { name = "metallurgic-science-pack",     default = 200, prototypes = {"metallurgic-science-pack"} },
    { name = "electromagnetic-science-pack", default = 200, prototypes = {"electromagnetic-science-pack"} },
    { name = "agricultural-science-pack",    default = 200, prototypes = {"agricultural-science-pack"} },
    { name = "cryogenic-science-pack",       default = 200, prototypes = {"cryogenic-science-pack"} },
    { name = "promethium-science-pack",      default = 200, prototypes = {"promethium-science-pack"} },
  }},

  -- Asteroid chunks default to a vanilla stack size of 1.
  { category = "Space", prefix = "b", items = {
    { name = "metallic-asteroid-chunk",   default = 1, prototypes = {"metallic-asteroid-chunk"} },
    { name = "carbonic-asteroid-chunk",   default = 1, prototypes = {"carbonic-asteroid-chunk"} },
    { name = "oxide-asteroid-chunk",      default = 1, prototypes = {"oxide-asteroid-chunk"} },
    { name = "promethium-asteroid-chunk", default = 1, prototypes = {"promethium-asteroid-chunk"} },
  }},
}
