if not OptionManager then
	-- The options module
	OptionManager = OptionManager or {
	    options = {}
	}
end

-- Returns the value for an option, or the default if it doesn't exist
function OptionManager:GetOption(optionName, default)
    if OptionManager.options[optionName] ~= nil then
        return OptionManager.options[optionName]
    end

    return default or 0
end

-- Sets an option to the given value
function OptionManager:SetOption(optionName, newValue)
    OptionManager.options[optionName] = newValue
end

if not OptionManager.initialSettings then
	OptionManager.initialSettings = true
	
	-- Max time for picking options
	OptionManager:SetOption('maxOptionSelectionTime', 60 * 5)

	-- Max time for voting for options
	OptionManager:SetOption('maxOptionVotingTime', 30)

	-- Banning Period (2 minutes)
	OptionManager:SetOption('banningTime', 90)

	-- Hero picking time
	OptionManager:SetOption('heroBanningTime', 60)

	-- Picking Time (3 minutes)
	OptionManager:SetOption('pickingTime', 60 * 3)

	-- Time to review random builds (120 seconds)
	OptionManager:SetOption('randomSelectionTime', 120)

	-- Review time (30 seconds)
	OptionManager:SetOption('reviewTime', 15)

	-- Should we use slave voting, set ID = -1 for no
	-- Set to the ID of the player who is the master
	OptionManager:SetOption('slaveID', -1)

	-- Enable hero banning?
	OptionManager:SetOption('enableHeroBanning', false)

	--[[
	    VOTEABLE OPTIONS
	]]

	-- Custom Spell Power (Multiplies the power of things)
	OptionManager:SetOption('customSpellPower', 1)
	OptionManager:SetOption('customItemPower', 1)

	-- Buffing
	OptionManager:SetOption('buffHeroes', 0)
	OptionManager:SetOption('buffTowers', 0)
	OptionManager:SetOption('buffBuildings', 0)
	OptionManager:SetOption('buffCreeps', 0)
	OptionManager:SetOption('buffNeutralCreeps', 0)

	-- Total number of skill slots to allow
	OptionManager:SetOption('maxSlots', 6)

	-- Total number of normal skills to allow
	OptionManager:SetOption('maxSkills', 6)

	-- Total number of ults to allow (Ults are always on the right)
	OptionManager:SetOption('maxUlts', 2)

	-- Set Balance Mode
	OptionManager:SetOption('balanceMode', false)

	-- Should we ban troll combos?
	OptionManager:SetOption('banTrollCombos', true)

	-- The starting level
	OptionManager:SetOption('startingLevel', 1)

	-- The amount of bonus gold to award players
	OptionManager:SetOption('bonusGold', 0)

	-- Should we turn easy mode on?
	OptionManager:SetOption('useEasyMode', true)

	-- Are users allowed to pick skills?
	OptionManager:SetOption('allowedToPick', true)

	-- Should we force random heroes?
	OptionManager:SetOption('forceRandomHero', false)

	-- Should we disable perks?
	OptionManager:SetOption('disablePerks', false)

	-- Enable WTF Mode?
	OptionManager:SetOption('wtfMode', false)

	-- Enable Universal shop mode
	OptionManager:SetOption('universalShop', false)

	-- Enable fast jungle mode
	OptionManager:SetOption('fastJungleCreeps', false)

	-- All vision
	OptionManager:SetOption('allVision', false)

	-- Multicast Madness
	OptionManager:SetOption('multicastMadness', false)

	-- Fat-O-Meter
	OptionManager:SetOption("useFatOMeter", 0)

	-- Ingame Builder
	OptionManager:SetOption('allowIngameHeroBuilder', false)

	-- Max level
	OptionManager:SetOption('maxHeroLevel', 25)

	-- Force unique skills?
	OptionManager:SetOption('forceUniqueSkills', 0)

	-- Force unique heroes?
	OptionManager:SetOption('uniqueHeroes', 0)

	-- Allow the passives on skills to be used
	OptionManager:SetOption('allowItemModifers', true)

	-- Allow bear and tower skills?
	OptionManager:SetOption('allowBearSkills', false)
	OptionManager:SetOption('allowTowerSkills', false)
	OptionManager:SetOption('allowBuildingSkills', false)
	OptionManager:SetOption('allowCreepSkills', false)

	-- Respawn modifier
	OptionManager:SetOption('respawnModifier', 0)

	-- Give a free scepter?
	OptionManager:SetOption('freeScepter', false)

	-- Should we load survival gamemode?
	OptionManager:SetOption('loadSurvival', false)

	-- Free courier
	OptionManager:SetOption('freeCourier', 2)

	-- Number of towers in the middle of a lane
	OptionManager:SetOption('middleTowers', 1)

	-- Should we prevent fountain camping?
	OptionManager:SetOption('preventFountainCamping', false)

	-- Lvl1 ults
	OptionManager:SetOption('useLevel1ults', false)

	-- Full price sellback
	OptionManager:SetOption('fullPriceSellback', false)

	-- Mutators
	OptionManager:SetOption('fastRunes', false)
	OptionManager:SetOption('superRunes', false)
	OptionManager:SetOption('periodicSpellCast', false)
	OptionManager:SetOption('doubleTalents', false)
	OptionManager:SetOption('vampirism', false)
	OptionManager:SetOption('killstreakPower', false)
	OptionManager:SetOption('cooldownReduction', false)
	OptionManager:SetOption('explodeOnDeath', false)
	OptionManager:SetOption('goldDropOnDeath', false)
	OptionManager:SetOption('resurrectAllies', false)
	OptionManager:SetOption('randomLaneCreeps', false)
	OptionManager:SetOption('noHealthbars', false)
	OptionManager:SetOption('convertableTowers', false)

	-- Other Mutators
	OptionManager:SetOption('322', 0)
	OptionManager:SetOption('refreshCooldownsOnDeath', 0)
	OptionManager:SetOption('gottaGoFast', 0)
	OptionManager:SetOption('battleThirst', 0)
	OptionManager:SetOption('memesRedux', 0)

	--[[
	    GAMEMODE STUFF
	]]

	-- Max number of bans
	OptionManager:SetOption('maxBans', 5)
	OptionManager:SetOption('maxHeroBans', 2)

	OptionManager:SetOption('duels', 0)

	-- Host banning mode?
	OptionManager:SetOption('hostBanning', false)

	-- Which balance mode to use
	OptionManager:SetOption('balanceMode', 0)

	-- The gamemode
	OptionManager:SetOption('gamemode', 1)    -- Set default gamemode

	-- Enable cycling builds
	OptionManager:SetOption('cyclingBuilds', false)

	-- Are we using the draft arrays -- This will allow players to only pick skills from white listed heroes
	OptionManager:SetOption('useDraftArray', true)

	-- How many heroes should the game auto allocate if we're using the draft array?
	OptionManager:SetOption('autoDraftHeroNumber', 10)

	-- Gold Modifier
	OptionManager:SetOption('goldModifier', 1)
	OptionManager:SetOption('expModifier', 1)
end
