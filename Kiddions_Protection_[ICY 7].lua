require_game_build(2944)
local pro = menu.add_submenu("====== Protections [By ICY 7] ======")
local boolall = false 
local blockSocialClubSpamState = false
 
local function Text(text)
	pro:add_action(text, function() end)
end
 
Text("➫Protections v1.68 [ICY 7]")
Text("--")
 
local function Activity(bool)
	globals.set_bool(1669794, bool) 
end
 
local function Bounty(bool)
	globals.set_bool(1669276, bool) 
end
 
local function CeoKick(bool)
	globals.set_bool(1669766, bool) 
end
 
local function KickCrashes(bool)
	globals.set_bool(1669936, bool)
	globals.set_bool(1669663, bool)
	globals.set_bool(1669818, bool)
	globals.set_bool(1669833, bool)
	globals.set_bool(1669733, bool)
	globals.set_bool(1669810, bool)
	globals.set_bool(1670028, bool)
end
 
local function getKickCrashesState()
	return ( globals.get_bool(1669936) and
	globals.get_bool(1669663) and 
	globals.get_bool(1669818) and
	globals.get_bool(1669833) and
	globals.get_bool(1669733) and
	globals.get_bool(1669810) and
	globals.get_bool(1670028))
end
 
local function CeoBan(bool)
	globals.set_bool(1669788, bool) 
end
 
local function SoundSpam(bool)
	globals.set_bool(1669661, bool)
	globals.set_bool(1670033, bool)
	globals.set_bool(1669211, bool)
	globals.set_bool(1670529, bool)
	globals.set_bool(1669840, bool)
	globals.set_bool(1669228, bool)
end
 
local function getSoundSpamState()
	return (globals.get_bool(1669661) and
	globals.get_bool(1670033) and
	globals.get_bool(1669211) and
	globals.get_bool(1670529) and
	globals.get_bool(1669840) and
	globals.get_bool(1669228))
end
 
local function InfiniteLoad(bool)	
	globals.set_bool(1669729, bool) 
	globals.set_bool(1669858, bool)
end
 
local function getInfiniteLoadState()
	return (globals.get_bool(1669729) and
	globals.get_bool(1669858))
end
 
local function Collectibles(bool)
	globals.set_bool(1669998, bool) 
end
 
local function PassiveMode(bool)
	globals.set_bool(1669778, bool) 
end
 
local function TransactionError(bool) 
	globals.set_bool(1669579, bool) 
end
 
local function RemoveMoneyMessage(bool) 
	globals.set_bool(1669662, bool)
	globals.set_bool(1669233, bool)
	globals.set_bool(1669839, bool)
end
 
local function getRemoveMoneyMessageState()
	return (globals.get_bool(1669662) and
	globals.get_bool(1669233) and
	globals.get_bool(1669839))
end
 
local function ExtraTeleport(bool) 
	globals.set_bool(1669534, bool) 
	globals.set_bool(1669928, bool) 
    globals.set_bool(1670027, bool)
    globals.set_bool(1670028, bool)
    globals.set_bool(1670023, bool) 
end
 
local function getExtraTeleportState()
	return (globals.get_bool(1669534) and
	globals.get_bool(1669928) and globals.get_bool(1670027) and globals.get_bool(1670028) and globals.get_bool(1670023))
end
 
local function ClearWanted(bool) 
	globals.set_bool(1669720, bool)
end
 
local function OffTheRadar(bool) 
	globals.set_bool(1669722, bool) 
end
 
local function SendCutscene(bool) 
	globals.set_bool(1669988, bool)
end
 
local function Godmode(bool) 
	globals.set_bool(1669213, bool)
end
 
local function PersonalVehicleDestroy(bool) 
	globals.set_bool(1669284, bool)
	globals.set_bool(1669845, bool) 
end
 
local function getPersonalVehicleDestroyState()
	return (globals.get_bool(1669284) and
	globals.get_bool(1669845))
end
 
local function RemoteGlobalModification(bool)
	local setting = 0
	if bool then
		setting = 1
	end
	globals.set_int(1669976, setting)
	globals.set_int(1669680, setting)
end
 
local function getRemoteGlobalModificationState()
	return ((globals.get_int(1669976) == 1) and
	(globals.get_int(1669680) == 1))
end
 
local function BlockSocialclubSpam(bool)
	blockSocialClubSpamState = bool
end
 
local function getBlockSocialClubSpamState()
	return blockSocialClubSpamState
end
 
 
 
local function All(bool) 
	Activity(bool)
	Bounty(bool)
	CeoKick(bool)
	CeoBan(bool)
	SoundSpam(bool)
	InfiniteLoad(bool)
	PassiveMode(bool)
	TransactionError(bool)
	RemoveMoneyMessage(bool)
	ClearWanted(bool)
	OffTheRadar(bool)
	PersonalVehicleDestroy(bool)
	SendCutscene(bool)
	Godmode(bool)
	Collectibles(bool)
	ExtraTeleport(bool)
	KickCrashes(bool)
	RemoteGlobalModification(bool)
	BlockSocialclubSpam(bool)
end
 
pro:add_toggle("Activate All", function()
	return boolall
end, function()
	boolall = not boolall
	All(boolall)
end)
Text("--")
pro:add_toggle("Block Start Activity", function() --Credits to YimMenu
	return globals.get_bool(1669794)
end, function()
	Activity(not globals.get_bool(1669794))
end)
 
pro:add_toggle("Block Bounty", function()
	return globals.get_bool(1669276)
end, function()
	Bounty(not globals.get_bool(1669276))
end)
 
 
pro:add_toggle("Block Socialclub Spam", function()
	return getBlockSocialClubSpamState()
end, function(value)
	BlockSocialclubSpam(value)
end)
 
pro:add_toggle("Block Remote Global Modification", function()
	return getRemoteGlobalModificationState()
end, function()
	RemoteGlobalModification(not getRemoteGlobalModificationState())
end)
 
pro:add_toggle("Block Some Kicks&&Crashes", function()
	return getKickCrashesState()
end, function()
	KickCrashes(not getKickCrashesState())
end)
 
pro:add_toggle("Block Ceo Kick", function()
	return globals.get_bool(1669766)
end, function()
	CeoKick(not globals.get_bool(1669766))
end)
 
pro:add_toggle("Block Ceo Ban", function()
	return globals.get_bool(1669788) 
end, function()
	CeoBan(not globals.get_bool(1669788))
end)
 
pro:add_toggle("Block Sound Spam", function()
	return getSoundSpamState()
end, function()
	SoundSpam(not getSoundSpamState())
end)
 
pro:add_toggle("Block Infinite Loadingscreen", function()
	return getInfiniteLoadState()
end, function()
	InfiniteLoad(not getInfiniteLoadState())
end)
 
pro:add_toggle("Block Passive Mode", function()
	return globals.get_bool(1669778) 
end, function()
	PassiveMode(not globals.get_bool(1669778))
end)
 
pro:add_toggle("Block Transaction Error", function()
	return globals.get_bool(1669579)
end, function()
	TransactionError(not globals.get_bool(1669579))
end)
 
pro:add_toggle("Block Modded Notifys/SMS", function()
	return getRemoveMoneyMessageState()
end, function()
	RemoveMoneyMessage(not getRemoveMoneyMessageState())
end)
 
pro:add_toggle("Block Clear Wanted", function()
	return globals.get_bool(1669720)
end, function()
	ClearWanted(not globals.get_bool(1669720))
end)
 
pro:add_toggle("Block Off The Radar", function()
	return globals.get_bool(1669722)
end, function()
	OffTheRadar(not globals.get_bool(1669722))
end)
 
pro:add_toggle("Block Personal Vehicle Destroy", function()
	return getPersonalVehicleDestroyState()
end, function()
	PersonalVehicleDestroy(not getPersonalVehicleDestroyState())
end)
 
pro:add_toggle("Block Send to Cutscene", function()
	return globals.get_bool(1669988)
end, function()
	SendCutscene(not globals.get_bool(1669988))
end)
 
pro:add_toggle("Block Remove Godmode", function()
	return globals.get_bool(1669213)
end, function()
	Godmode(not globals.get_bool(1669213))
end)
 
pro:add_toggle("Block Give Collectibles", function()
	return globals.get_bool(1669998)
end, function()
	Collectibles(not globals.get_bool(1669998))
end)
 
pro:add_toggle("Block Cayo && Beach Teleport", function()
	return getExtraTeleportState()
end, function()
	ExtraTeleport(not getExtraTeleportState())
end)
 
 
function OnScriptsLoaded()
	local social_controller = script("social_controller")
	while true do
		if blockSocialClubSpamState then
			if social_controller:is_active() then
				social_controller:set_int(169, 0)
			end
		end
			
		-- Some sort of sleep is mandatory so other code can be executed (menu get/set and other triggers)
		sleep(1)
	end
end
 
menu.register_callback('OnScriptsLoaded', OnScriptsLoaded)
 
Text("--")
Text("By luiss_01 [ICY 7]")
Text("Improvements by ➫ r3st3ikt [ICY 7]")
Text("Addons by Kiddion")
Text("kiddionsmodestmenu.com")
Text("--")