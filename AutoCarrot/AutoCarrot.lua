local function BuddyUI()
    Prat.db:SetProfile("Buddysacks")
    SmartBuff.db:SetProfile("BuddyUI")
    SexyMap.db:SetProfile("BuddyUI")
    PitBull4.db:SetProfile("BuddyUICaster")
    BT4Profiles:ChooseProfile("BuddyUICaster")
    Recount.db:SetProfile("BuddyUI")
    Grid2:ProfileSet("BuddyUI")
    OmniCCDB["profiles"]["Default"] = {}

    if GetCVar("autoLootDefault") == "0" then
        SetCVar("autoLootDefault", "1")
        print("Autoloot Off")
    end

    if GetCVar("ProfanityFilter") == "1" then
        SetCVar("ProfanityFilter", "0")
        print("Profanity Allowed")
    end

    if GetCVar("InstantQuestText") == "0" then
        SetCVar("InstantQuestText", "1")
        print("InstantQuestText On")
    end
	
	if GetCVar("violenceLevel") == "0" or violenceLevel == "1" or violenceLevel == "2" or violenceLevel == "4" then
        SetCVar("violenceLevel", "5")
		print("violenceLevel Max")
	end
end

-- Register an event to run the BuddyUI function after the player has logged in.
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(_, event)
    -- Delay the execution of BuddyUI by 2 seconds to ensure the character is fully loaded.
    C_Timer.After(2, function()
        BuddyUI()
    end)
end)
