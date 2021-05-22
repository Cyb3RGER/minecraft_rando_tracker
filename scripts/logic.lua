function cobble_tools()
    local value = Tracker:ProviderCountForCode("tools_cobble")

    if (value > 0) then
        return 1
    end

    return 0
end

function process_iron()
    local value = cobble_tools() + Tracker:ProviderCountForCode("ingots")

    if (value > 1) then
        return 1
    end

    return 0
end

function iron_tools()
    local value = process_iron() + Tracker:ProviderCountForCode("tools_iron")

    if (value > 1) then
        return 1
    end

    return 0
end

function diamond_tools()
    local value = iron_tools() + Tracker:ProviderCountForCode("tools_diamond")

    if (value > 1) then
        return 1
    end

    return 0
end

function cobble_weapons()
    local value = Tracker:ProviderCountForCode("weapons_cobble")

    if (value > 0) then
        return 1
    end

    return 0
end

function iron_weapons()
    local value = process_iron() + Tracker:ProviderCountForCode("weapons_iron")

    if (value > 1) then
        return 1
    end

    return 0
end

function diamonds_weapons()
    local value = iron_tools() + Tracker:ProviderCountForCode("weapons_diamond")

    if (value > 1) then
        return 1
    end

    return 0
end

function iron_armor()
    local value = process_iron() + Tracker:ProviderCountForCode("armor_iron")

    if (value > 1) then
        return 1
    end

    return 0
end

function diamond_armor()
    local value = iron_tools() + Tracker:ProviderCountForCode("armor_diamond")

    if (value > 1) then
        return 1
    end

    return 0
end

function shield()
    local value = process_iron() + Tracker:ProviderCountForCode("shield")

    if (value > 1) then
        return 1
    end

    return 0
end

function bucket()
    local value = process_iron() + Tracker:ProviderCountForCode("bucket")

    if (value > 1) then
        return 1
    end

    return 0
end

function enchant()
    local value = diamond_tools() + Tracker:ProviderCountForCode("enchanting")

    if (value > 1) then
        return 1
    end

    return 0
end


function nether_access()
    if (Tracker:ProviderCountForCode("flint") > 0) then
        local value = diamond_tools() + bucket()
        if (value > 0) then
            return 1
        end
    end

    return 0
end

function can_fight_blaze()
    if (Tracker:ProviderCountForCode("fortress") > 0) then
        if ((cobble_weapons() + iron_armor()) > 1 or (cobble_weapons() + shield()) > 1) then
            return 1
        end
    end
    return 0
end

function potion_brewing()
    if ((can_fight_blaze() + Tracker:ProviderCountForCode("brewing") + Tracker:ProviderCountForCode("bottles")) > 2) then
        return 1
    end
    return 0
end