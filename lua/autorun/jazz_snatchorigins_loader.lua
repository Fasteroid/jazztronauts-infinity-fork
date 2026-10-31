if not SERVER then return end

local referencedAddons = progress.GetRecentSnatchOrigins()

for k, addon in ipairs(referencedAddons) do
    print("Map '" .. addon.filename .. "' (wsid=" .. addon.wsid .. ") referenced in a player's recent snatches; mounting...")
    mapcontrol.InstallAddon(addon.wsid, function() end, function() end)
    resource.AddWorkshop(addon.wsid)
end