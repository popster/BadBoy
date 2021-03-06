novaEngineTables = { }

-- This is for the Dispel Check, all Debuffs we want dispelled go here
-- valid arguments: stacks = num range = num
novaEngineTables.DispelID = {
    { id = 143579, stacks = 3 }, -- Immersius
    { id = 143434, stacks = 3 }, -- Fallen Protectors
    { id = 144514, stacks = 0 }, -- Norushen
    { id = 144351, stacks = 0 }, -- Sha of Pride
    { id = 146902, stacks = 0 }, -- Galakras(Korga Poisons)
    { id = 143432, stacks = 0 }, -- General Nazgrim
    { id = 142913, stacks = 0, range = 10}, -- Malkorok(Displaced Energy)
    { id = 115181, stacks = 0 }, -- Spoils of Pandaria(Breath of Fire)
    { id = 143791, stacks = 0 }, -- Thok(Corrosive Blood)
    { id = 145206, stacks = 0 } -- Aqua Bomb(Proving Grounds)
}

-- This is where we house the Debuffs that are bad for our users, and should not be healed when they have it
novaEngineTables.BadDebuffList= {
    104451, -- Ice Tomb
    76577,-- Smoke Bomb
    121949, -- Parasistic Growth
    122784, -- Reshape Life
    122370, -- Reshape Life 2
    123184, -- Dissonance Field
    123255, -- Dissonance Field 2
    123596, -- Dissonance Field 3
    128353, -- Dissonance Field 4
    145832, -- Empowered Touch of Y'Shaarj (mind control garrosh)
    145171, -- Empowered Touch of Y'Shaarj (mind control garrosh)
    145065, -- Empowered Touch of Y'Shaarj (mind control garrosh)
    145071 -- Empowered Touch of Y'Shaarj (mind control garrosh)
}

-- list of special units we want to heal, these npc will go directly into healing engine(Special Heal must be checked)
novaEngineTables.SpecialHealUnitList = {
    [71604] = "Immersus Oozes" ,
    [6459] = "Boss#3 SoO",
    [6460] = "Boss#3 SoO",
    [6464] = "Boss#3 SoO"
};

-- these are the debuffs that we want to use to set specific health to a unit wearing it
-- set dot that need to be healed to max(needs to be topped) to very low values so that engine
novaEngineTables.SpecificHPDebuffs = {
    -- needs to be topped
    { debuff = 145263 , value = 20 }, -- Proving Grounds Healer Debuff.
}

-- this table will assign role to any unit wearing the unit name
novaEngineTables.roleTable = {
    ["Oto the Protector"] = { role = "TANK", class = "Warrior" }, -- proving grounds tank
    ["Sooli the Survivalist"] = { role = "DPS", class = "Hunter" }, -- proving grounds dps
    ["Ki the Assassin"] = { role = "DPS", class = "Rogue" }, -- proving grounds dps
    ["Kavan the Arcanist"] = { role = "DPS", class = "Mage" }, -- proving grounds dps
}

-- special targets to include when we want to heal npcs
novaEngineTables.SavedSpecialTargets = {
    ["target"] = nil,
    ["mouseover"] = nil,
    ["focus"] = nil
}