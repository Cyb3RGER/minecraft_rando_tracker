ENABLE_DEBUG_LOG = false

print("-- Minecraft Tracker --")
print("Loaded tracker : ", Tracker.ActiveVariantUID)
if ENABLE_DEBUG_LOG then
    print("Debug logging is enabled!")
end
-- Maps
Tracker:AddMaps("maps/maps.json")


-- Items
Tracker:AddItems("items/settings.json")
Tracker:AddItems("items/items.json")

-- Logic
ScriptHost:LoadScript("scripts/logic.lua")

-- Locations
Tracker:AddLocations("locations/locations.json")

-- Layout
Tracker:AddLayouts("layouts/settings.json")
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")


-- AutoTracking for Poptracker
if PopVersion and PopVersion>="0.18.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")    
end