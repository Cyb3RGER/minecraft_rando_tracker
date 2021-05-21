print("-- Minecraft Tracker --")
print("Loaded tracker : ", Tracker.ActiveVariantUID)
-- Maps
Tracker:AddMaps("maps/maps.json")

-- Items
Tracker:AddItems("items/items.json")

-- Logic
Tracker:AddLocations("locations/locations.json")

-- Layout
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")