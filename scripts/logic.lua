--settings functions

function difficulty_is_easy()
    local value = Tracker:ProviderCountForCode("difficulty_easy")
    if ENABLE_DEBUG_LOG then
        print(string.format("difficulty_is_easy: value: %s",value))
    end
    if (value > 0) then
        return 1
    end    
    return 0
end

function difficulty_is_normal()
    local value = Tracker:ProviderCountForCode("difficulty_normal")
    if ENABLE_DEBUG_LOG then
        print(string.format("difficulty_is_normal: value: %s",value))
    end
    if (value > 0) then
        return 1
    end    
    return 0
end

function difficulty_is_hard()
    local value = Tracker:ProviderCountForCode("difficulty_hard")
    if ENABLE_DEBUG_LOG then
        print(string.format("difficulty_is_hard: value: %s",value))
    end
    if (value > 0) then
        return 1
    end    
    return 0
end

function is_struct_shuffle()
    local value = Tracker:ProviderCountForCode("struct_shuffle_on")
    if ENABLE_DEBUG_LOG then
        print(string.format("is_struct_shuffle: value: %s",value))
    end
    if (value > 0) then
        return 1
    end    
    return 0
end

function is_not_struct_shuffle()
    local value = Tracker:ProviderCountForCode("struct_shuffle_off")
    if ENABLE_DEBUG_LOG then
        print(string.format("is_not_struct_shuffle: value: %s",value))
    end
    if (value > 0) then
        return 1
    end    
    return 0
end

function include_hard()
    local value = Tracker:ProviderCountForCode("hard_on")
    if ENABLE_DEBUG_LOG then
        print(string.format("include_hard: value: %s",value))
    end
    if (value > 0) then
        return 1
    end    
    return 0
end

function include_unreasonable()
    local value = Tracker:ProviderCountForCode("unreasonable_on")
    if ENABLE_DEBUG_LOG then
        print(string.format("include_unreasonable: value: %s",value))
    end
    if (value > 0) then
        return 1
    end    
    return 0
end

function showexcluded()
    local value = Tracker:ProviderCountForCode("showexcluded_on")
    if ENABLE_DEBUG_LOG then
        print(string.format("showexcluded: value: %s",value))
    end
    if (value > 0) then
        return 1
    end    
    return 0
end

function deathlink()
    local value = Tracker:ProviderCountForCode("deathlink_on")
    if ENABLE_DEBUG_LOG then
        print(string.format("deathlink: value: %s",value))
    end
    if (value > 0) then
        return 1
    end    
    return 0
end

function include_postgame(required_goal)
    local value = Tracker:ProviderCountForCode("postgame_on")
    if ENABLE_DEBUG_LOG then
        print(string.format("include_postgame: value: %s",value))
    end
    if (value > 0) then
        local goal = get_goal()
        if ENABLE_DEBUG_LOG then
            print(string.format("include_postgame: goal: %s",goal))
        end
        if goal == 0 then
            return 0
        elseif (goal == 1 or goal == 3) and required_goal == "dragon" then
            return 1
        elseif (goal == 2 or goal == 3) and required_goal == "wither" then
            return 1
        else
            if ENABLE_DEBUG_LOG then
                print(string.format("include_postgame: unknown goal value: %s",goal))
            end
        end
    end    
    return 0
end

function get_goal()
    local none = Tracker:ProviderCountForCode("goal_none")
    local dragon = Tracker:ProviderCountForCode("goal_dragon")
    local wither = Tracker:ProviderCountForCode("goal_wither")
    local both = Tracker:ProviderCountForCode("goal_both")
    if (none > 0) then
        return 0    
    elseif (dragon > 0) then
        return 1
    elseif (wither > 0) then
        return 2    
    elseif (both > 0) then
        return 3
    end
    return -1
end

--item functions

function overworld()
    local value = Tracker:ProviderCountForCode("overworld")
    if ENABLE_DEBUG_LOG then
        print(string.format("overworld: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function nether()
    local value = Tracker:ProviderCountForCode("nether")
    if ENABLE_DEBUG_LOG then
        print(string.format("nether: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function _end()
    local value = Tracker:ProviderCountForCode("end")
    if ENABLE_DEBUG_LOG then
        print(string.format("end: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function village()
    local value = Tracker:ProviderCountForCode("village")
    if ENABLE_DEBUG_LOG then
        print(string.format("village: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function outpost()
    local value = Tracker:ProviderCountForCode("outpost")
    if ENABLE_DEBUG_LOG then
        print(string.format("outpost: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function bastion()
    local value = Tracker:ProviderCountForCode("bastion")
    if ENABLE_DEBUG_LOG then
        print(string.format("bastion: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function fortress()
    local value = Tracker:ProviderCountForCode("fortress")
    if ENABLE_DEBUG_LOG then
        print(string.format("fortress: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function city()
    local value = Tracker:ProviderCountForCode("city")
    if ENABLE_DEBUG_LOG then
        print(string.format("city: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function compass_village()
    local value = Tracker:ProviderCountForCode("compass_village")
    if ENABLE_DEBUG_LOG then
        print(string.format("compass_village: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function compass_outpost()
    local value = Tracker:ProviderCountForCode("compass_outpost")
    if ENABLE_DEBUG_LOG then
        print(string.format("compass_outpost: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function compass_bastion()
    local value = Tracker:ProviderCountForCode("compass_bastion")
    if ENABLE_DEBUG_LOG then
        print(string.format("compass_bastion: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function compass_fortress()
    local value = Tracker:ProviderCountForCode("compass_fortress")
    if ENABLE_DEBUG_LOG then
        print(string.format("compass_fortress: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function compass_city()
    local value = Tracker:ProviderCountForCode("compass_city")
    if ENABLE_DEBUG_LOG then
        print(string.format("compass_city: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function archery()
    local value = Tracker:ProviderCountForCode("archery")
    if ENABLE_DEBUG_LOG then
        print(string.format("archery: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function crafting_ingots()
    local value = Tracker:ProviderCountForCode("crafting_ingots")
    if ENABLE_DEBUG_LOG then
        print(string.format("crafting_ingots: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function crafting_blocks()
    local value = Tracker:ProviderCountForCode("crafting_blocks")
    if ENABLE_DEBUG_LOG then
        print(string.format("crafting_blocks: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function brewing()
    local value = Tracker:ProviderCountForCode("brewing")
    if ENABLE_DEBUG_LOG then
        print(string.format("brewing: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function enchanting()
    local value = Tracker:ProviderCountForCode("enchanting")
    if ENABLE_DEBUG_LOG then
        print(string.format("enchanting: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function bucket()
    local value = Tracker:ProviderCountForCode("bucket")
    if ENABLE_DEBUG_LOG then
        print(string.format("bucket: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function flint()
    local value = Tracker:ProviderCountForCode("flint")
    if ENABLE_DEBUG_LOG then
        print(string.format("flint: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function bed()
    local value = Tracker:ProviderCountForCode("bed")
    if ENABLE_DEBUG_LOG then
        print(string.format("bed: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function bottles()
    local value = Tracker:ProviderCountForCode("bottles")
    if ENABLE_DEBUG_LOG then
        print(string.format("bottles: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function shield()
    local value = Tracker:ProviderCountForCode("shield")
    if ENABLE_DEBUG_LOG then
        print(string.format("shield: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function rod()
    local value = Tracker:ProviderCountForCode("rod")
    if ENABLE_DEBUG_LOG then
        print(string.format("rod: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function campfire()
    local value = Tracker:ProviderCountForCode("campfire")
    if ENABLE_DEBUG_LOG then
        print(string.format("campfire: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function weapons_cobble()
    local value = Tracker:ProviderCountForCode("weapons_cobble")
    if ENABLE_DEBUG_LOG then
        print(string.format("weapons_cobble: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function weapons_iron()
    local value = Tracker:ProviderCountForCode("weapons_iron")
    if ENABLE_DEBUG_LOG then
        print(string.format("weapons_iron: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function weapons_diamond()
    local value = Tracker:ProviderCountForCode("weapons_diamond")
    if ENABLE_DEBUG_LOG then
        print(string.format("weapons_diamond: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function tools_cobble()
    local value = Tracker:ProviderCountForCode("tools_cobble")
    if ENABLE_DEBUG_LOG then
        print(string.format("tools_cobble: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function tools_iron()
    local value = Tracker:ProviderCountForCode("tools_iron")
    if ENABLE_DEBUG_LOG then
        print(string.format("tools_iron: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function tools_diamond()
    local value = Tracker:ProviderCountForCode("tools_diamond")
    if ENABLE_DEBUG_LOG then
        print(string.format("tools_diamond: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function armor_iron()
    local value = Tracker:ProviderCountForCode("armor_iron")
    if ENABLE_DEBUG_LOG then
        print(string.format("armor_iron: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function armor_diamond()
    local value = Tracker:ProviderCountForCode("armor_diamond")
    if ENABLE_DEBUG_LOG then
        print(string.format("armor_diamond: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function spyglass()
    local value = Tracker:ProviderCountForCode("spyglass")
    if ENABLE_DEBUG_LOG then
        print(string.format("spyglass: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function lead()
    local value = Tracker:ProviderCountForCode("lead")
    if ENABLE_DEBUG_LOG then
        print(string.format("lead: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function shulker_box()
    local value = Tracker:ProviderCountForCode("shulker_box")
    if ENABLE_DEBUG_LOG then
        print(string.format("shulker_box: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function channeling()
    local value = Tracker:ProviderCountForCode("channeling")
    if ENABLE_DEBUG_LOG then
        print(string.format("channeling: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function silk_touch()
    local value = Tracker:ProviderCountForCode("silk_touch")
    if ENABLE_DEBUG_LOG then
        print(string.format("silk_touch: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function saddle()
    local value = Tracker:ProviderCountForCode("saddle")
    if ENABLE_DEBUG_LOG then
        print(string.format("saddle: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function piercing()
    local value = Tracker:ProviderCountForCode("piercing")
    if ENABLE_DEBUG_LOG then
        print(string.format("piercing: value: %s",value))
    end    
    if(value > 0) then
        return 1
    end
    return 0
end

function scraps()
    local value = Tracker:ProviderCountForCode("scraps")
    if ENABLE_DEBUG_LOG then
        print(string.format("scraps: value: %s",value))
    end    
    return value
end

function has_all_scraps()
    local value = Tracker:ProviderCountForCode("scraps") > 1
    if ENABLE_DEBUG_LOG then
        print(string.format("has_all_scraps: value: %s",value))
    end    
    if value then
        return 1
    end   
    return 0 
end

function pearls()
    local value = Tracker:ProviderCountForCode("pearls")
    if ENABLE_DEBUG_LOG then
        print(string.format("scraps: value: %s",value))
    end    
    return value
end

function dragon_egg_shards()
    local value = Tracker:ProviderCountForCode("dragon_egg_shards")
    if ENABLE_DEBUG_LOG then
        print(string.format("dragon_egg_shards: value: %s",value))
    end    
    return value
end

--fake items functions

function blaze_rods()
    return fortress_loot()
end

--logic funcs

function has_iron()
    local value = tools_cobble() > 0 and crafting_ingots() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("has_iron: value: %s",value))
    end    
    if value then
        return 1
    end    
    return 0
end

function has_copper()
    local value = tools_cobble() > 0 and crafting_ingots() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("has_copper: value: %s",value))
    end    
    if value then
        return 1
    end    
    return 0
end

function has_gold()
    local value = crafting_ingots() > 0 and (tools_iron() > 0 or nether() > 0)
    if ENABLE_DEBUG_LOG then
        print(string.format("has_gold: value: %s",value))
    end    
    if value then
        return 1
    end    
    return 0
end

function has_diamond_pickaxe()
    local value = tools_diamond() > 0 and has_iron() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("has_diamond_pickaxe: value: %s",value))
    end    
    if value then
        return 1
    end    
    return 0
end

function craft_crossbow()
    local value = has_iron() > 0 and archery() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("crossbow: value: %s",value))
    end    
    if value then
       return 1
    end
    return 0
end

function has_bottle()
    local value = bottles() > 0 and crafting_ingots() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("has_bottle: value: %s",value))
    end    
    if value then
       return 1
    end
    return 0
end

function has_spyglass()
    local value = has_copper() > 0 and spyglass() > 0 and can_adventure() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("has_spyglass: value: %s",value))
    end    
    if value then
       return 1
    end
    return 0
end

function has_lead()
    local value = lead() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("has_lead: value: %s",value))
    end    
    if value then
       return 1
    end
    return 0
end

function can_enchant()
    local value = enchanting() > 0 and has_diamond_pickaxe() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("can_enchant: value: %s",value))
    end
    if value then
        return 1        
    end
    return 0
end

function can_use_anvil()
    local value = enchanting() > 0 and crafting_blocks() > 0 and has_iron() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("can_use_anvil: value: %s",value))
    end    
    if value then
        return 1
    end    
    return 0
end

function fortress_loot()
    local value = fortress() > 0 and basic_combat() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("fortress_loot: value: %s",value))
    end    
    if value then
        return 1
    end    
    return 0
end

function can_brew_potions()    
    local value = blaze_rods() > 0 and brewing() > 0 and has_bottle() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("can_brew_potions: value: %s",value))
    end
    if value then
        return 1
    end
    return 0
end

function can_piglin_trade()
    local value = has_gold() > 0 and (nether() > 0 or bastion() > 0)
    if ENABLE_DEBUG_LOG then
        print(string.format("can_piglin_trade: value: %s",value))
    end
    if value then
        return 1
    end
    return 0
end

function enter_stronghold()
    local value = blaze_rods() > 0 and brewing() > 0 and pearls() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("enter_stronghold: value: %s",value))
    end
    if value then
        return 1
    end
    return 0
end

-- difficulty dependent logic functions

function can_adventure()
    if difficulty_is_easy() > 0 then --easy
        local value = weapons_iron() > 0 and (crafting_ingots() > 0 or campfire() > 0) and has_iron() > 0 and (deathlink() == 0 or  bed() > 0)
        if ENABLE_DEBUG_LOG then
            print(string.format("can_adventure: value: %s",value))
        end
        if value then
            return 1
        end
        return 0
    elseif difficulty_is_hard() > 0 then --hard
        local value = true
        if ENABLE_DEBUG_LOG then
            print(string.format("can_adventure: value: %s",value))
        end
        if value then
            return 1
        end
        return 0
    else --normal
        local value = weapons_cobble() > 0 and (crafting_ingots() > 0 or campfire() > 0) and (deathlink() == 0 or  bed() > 0)
        if ENABLE_DEBUG_LOG then
            print(string.format("can_adventure: value: %s",value))
        end
        if value then
            return 1
        end
        return 0
    end
end

function basic_combat()
    if difficulty_is_easy() > 0 then --easy
        local value = weapons_iron() > 0 and armor_iron() > 0 and shield() > 0 and has_iron() > 0
        if ENABLE_DEBUG_LOG then
            print(string.format("basic_combat: value: %s",value))
        end
        if value then
            return 1
        end 
    elseif difficulty_is_hard() > 0 then --hard
        local value = true
        if ENABLE_DEBUG_LOG then
            print(string.format("basic_combat: value: %s",value))
        end
        if value then
            return 1
        end
        return 0
    else --normal
        local value = weapons_cobble() > 0 and (armor_iron() > 0 or shield() > 0) and has_iron() > 0
        if ENABLE_DEBUG_LOG then
            print(string.format("basic_combat: value: %s",value))
        end
        if value then
            return 1
        end 
    end
    return 0
end

function complete_raid()
    local reach_regions = village() > 0 and outpost() > 0
    if difficulty_is_easy() > 0 then --easy
        local value = reach_regions and weapons_diamond() > 0 and armor_diamond() > 0 and 
            shield() > 0 and archery() > 0 and tools_iron() > 0 and has_iron() > 0
        if ENABLE_DEBUG_LOG then
            print(string.format("complete_raid: value: %s",value))
        end
        if value then
            return 1
        end 
    elseif difficulty_is_hard() > 0 then --hard
        local value = reach_regions and weapons_iron() > 0 and has_iron() > 0 and (armor_iron() > 0 or shield() > 0)
        if ENABLE_DEBUG_LOG then
            print(string.format("complete_raid: value: %s",value))
        end
        if value then
            return 1
        end
        return 0
    else --normal
        local value = reach_regions and weapons_iron() > 0 and has_iron() > 0 and armor_iron() > 0 and shield() > 0
        if ENABLE_DEBUG_LOG then
            print(string.format("complete_raid: value: %s",value))
        end
        if value then
            return 1
        end 
    end
    return 0
end

function can_kill_wither()  
    local normal_kill = weapons_diamond() > 0 and armor_diamond() > 0 and can_brew_potions() > 0 and can_enchant() > 0 
    if difficulty_is_easy() > 0 then --easy
        local value = fortress_loot() > 0 and normal_kill and archery() > 0
        if ENABLE_DEBUG_LOG then
            print(string.format("can_kill_wither: value: %s",value))
        end
        if value then
            return 1
        end 
    elseif difficulty_is_hard() > 0 then --hard
        local value = fortress_loot() > 0 and (normal_kill or  nether() > 0 or _end() > 0)
        if ENABLE_DEBUG_LOG then
            print(string.format("can_kill_wither: value: %s",value))
        end
        if value then
            return 1
        end
        return 0
    else --normal
        local value = fortress_loot() > 0 and normal_kill
        if ENABLE_DEBUG_LOG then
            print(string.format("can_kill_wither: value: %s",value))
        end
        if value then
            return 1
        end 
    end
    return 0
end

function can_respawn_ender_dragon()
    local value = nether() > 0 and _end() > 0 and crafting_ingots() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("can_respawn_ender_dragon: value: %s",value))
    end
    if value then
        return 1
    end 
end

function can_kill_ender_dragon()      
    if difficulty_is_easy() > 0 then --easy
        local value = weapons_diamond() > 0 and armor_diamond() > 0 and archery() > 0 and
            can_brew_potions() > 0 and can_enchant() > 0
        if ENABLE_DEBUG_LOG then
            print(string.format("can_kill_ender_dragon: value: %s",value))
        end
        if value then
            return 1
        end 
    elseif difficulty_is_hard() > 0 then --hard
        local value = (weapons_iron() > 0 and armor_iron() > 0) or (weapons_cobble() > 0 and bed() > 0)
        if ENABLE_DEBUG_LOG then
            print(string.format("can_kill_ender_dragon: value: %s",value))
        end
        if value then
            return 1
        end
        return 0
    else --normal
        local value = weapons_iron() > 0 and armor_iron() > 0 and archery() > 0
        if ENABLE_DEBUG_LOG then
            print(string.format("can_kill_ender_dragon: value: %s",value))
        end
        if value then
            return 1
        end 
    end
    return 0
end

-- region access logic functions

function nether_access()
    local value = flint() > 0 and (bucket() > 0 or tools_diamond() > 0) and has_iron() > 0
    if ENABLE_DEBUG_LOG then
        print(string.format("nether_access: value: %s",value))
    end    
    if value then
        return 1
    end
    return 0
end

function end_access()
    local value = enter_stronghold() > 0 and pearls() > 3
    if ENABLE_DEBUG_LOG then
        print(string.format("end_access: value: %s",value))
    end    
    if value then
        return 1
    end
    return 0
end

-- structure access logic functions

function village_access()
    local value
    if is_struct_shuffle() > 0 then
        value = can_adventure() > 0 and compass_village() > 0
    else
        value = can_adventure() > 0 and compass_village() > 0 and overworld() > 0
    end
    if ENABLE_DEBUG_LOG then
        print(string.format("village_access: value: %s",value))
    end    
    if value then
        return 1
    end
    return 0
end

function outpost_access()
    local value
    if is_struct_shuffle() > 0 then
        value = can_adventure() > 0 and compass_outpost() > 0
    else
        value = can_adventure() > 0 and compass_outpost() > 0 and overworld() > 0
    end
    if ENABLE_DEBUG_LOG then
        print(string.format("outpost_access: value: %s",value))
    end    
    if value then
        return 1
    end
    return 0
end

function fortress_access()
    local value
    if is_struct_shuffle() > 0 then
        value = can_adventure() > 0 and compass_fortress() > 0
    else
        value = can_adventure() > 0 and compass_fortress() > 0 and nether() > 0
    end
    if ENABLE_DEBUG_LOG then
        print(string.format("fortress_access: value: %s",value))
    end    
    if value then
        return 1
    end
    return 0
end

function bastion_access()
    local value
    if is_struct_shuffle() > 0 then
        value = can_adventure() > 0 and compass_bastion() > 0
    else
        value = can_adventure() > 0 and compass_bastion() > 0 and nether() > 0
    end
    if ENABLE_DEBUG_LOG then
        print(string.format("bastion_access: value: %s",value))
    end    
    if value then
        return 1
    end
    return 0
end

function city_access()
    local value
    if is_struct_shuffle() > 0 then
        value = can_adventure() > 0 and compass_city() > 0
    else
        value = can_adventure() > 0 and compass_city() > 0 and _end() > 0
    end
    if ENABLE_DEBUG_LOG then
        print(string.format("city_access: value: %s",value))
    end    
    if value then
        return 1
    end
    return 0
end

-- util functions
function _true()
    return 1
end

function _false()
    return 0
end