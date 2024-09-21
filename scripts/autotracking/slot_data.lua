function get_slot_options(slot_data)
    --    if slot_data["egg_shards_required"] ~= nil then
    --		Tracker:FindObjectForCode('egg_shards_required').AcquiredCount = slot_data["egg_shards_required"]
    --	end
    --	
    --    if slot_data["egg_shards_available"] ~= nil then
    --		Tracker:FindObjectForCode('egg_shards_available').AcquiredCount = slot_data["egg_shards_available"]
    --	end

    if slot_data["shuffle_structures"] ~= nil then
        print("Structure Shuffle")
        local obj = Tracker:FindObjectForCode("struct_shuffle")
        local stage = slot_data["shuffle_structures"]
        if stage == 1 then
            obj.CurrentStage = 0
        elseif stage == 0 then
            obj.CurrentStage = 1
        end
    end

    if slot_data["include_unreasonable_advancements"] ~= nil then
        local obj = Tracker:FindObjectForCode("unreasonable")
        local stage = slot_data["include_unreasonable_advancements"]
        if stage == 1 then
            obj.CurrentStage = 0
        elseif stage == 0 then
            obj.CurrentStage = 1
        end
    end

    if slot_data["required_bosses"] ~= nil then
        local obj = Tracker:FindObjectForCode("goal")
        local required_bosses = slot_data["required_bosses"]
        if required_bosses == "None" then
            obj.CurrentStage = 0
        elseif required_bosses == "Ender Dragon" then
            obj.CurrentStage = 1
        elseif required_bosses == "Wither" then
            obj.CurrentStage = 2
        elseif required_bosses == "Both" then
            obj.CurrentStage = 3
        end
    end

    if slot_data["combat_difficulty"] ~= nil then
        local obj = Tracker:FindObjectForCode("difficulty")
        local stage = slot_data["combat_difficulty"]
        if stage == 0 then
            obj.CurrentStage = 0
        elseif stage == 1 then
            obj.CurrentStage = 1
        elseif stage == 2 then
            obj.CurrentStage = 2
        end
    end

    if slot_data["include_postgame_advancements"] ~= nil then
        local obj = Tracker:FindObjectForCode("postgame")
        local stage = slot_data["include_postgame_advancements"]
        if stage == 1 then
            obj.CurrentStage = 0
        elseif stage == 0 then
            obj.CurrentStage = 1
        end
    end

    if slot_data["include_hard_advancements"] ~= nil then
        local obj = Tracker:FindObjectForCode("hard")
        local stage = slot_data["include_hard_advancements"]
        if stage == 1 then
            obj.CurrentStage = 0
        elseif stage == 0 then
            obj.CurrentStage = 1
        end
    end

    if slot_data["death_link"] ~= nil then
        local obj = Tracker:FindObjectForCode('deathlink')
        local setting = slot_data["death_link"]
        if setting == true then
            obj.CurrentStage = 0
        else
            obj.CurrentStage = 1
        end
    end
end
