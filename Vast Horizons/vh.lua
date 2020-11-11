require "wait"
PPI = require("ppi")
ppi = PPI.Load("aedf0cb0be5bf045860d54b7")
path = GetInfo(56).."worlds/Vast Horizons/sounds/"
snd_ext = ".ogg"
volumes = {50, 20, 30} -- global volume, ambience volume, communications volume
selected_volume = 1 -- index to above numerically-indexed table
AcceleratorTo("F5", "adjust_volume(-5)", 12)
AcceleratorTo("F6", "adjust_volume(5)", 12)
AcceleratorTo("F7", "select_volume()", 12)
Accelerator("ctrl+t", "tts", 12)

function play(arg)

	if type(arg.snd) ~= "string" then
		error("The first argument must be the string name of a sound you wish to use.")
	else
		local fullpath = path..arg.snd..snd_ext
		local looping = arg.looping or 0
		local pan = arg.pan or 0
local volume = volumes[1]
		if arg.vol ~= nil and type(arg.vol) == "string" then
volume = get_volume(arg.vol)
elseif arg.vol ~= nil and type(arg.vol) == "number" then
volume = arg.vol
end -- if
ppi.play(fullpath, looping, pan, volume)
	end -- if
end -- func

function play_random(arg)
if type(arg.snd) == "string" and type(arg.max) == "number" then
play{snd=arg["snd"]..tostring(math.random(1, arg["max"])), vol=arg.vol}
else
error("One or more invalid arguments encountered.")
end -- if
end

function get_volume(vol)
if type(vol) == "string" then
if vol == "gv" then
return volumes[1]
elseif vol == "av" then
return volumes[2]
elseif vol == "cv" then
return volumes[3]
else
error("Expected gv, av, or cv")
end -- if
elseif type(vol) == "number" and not(vol > #volumes)then
return volumes[vol]
else
error("Invalid volume index.")
end -- if
end -- func

function get_volume_name(vol)
if type(vol) == "number" then
if vol == 1 then
return "global volume"
elseif vol == 2 then
return "ambience volume"
elseif vol == 3 then
return "communications volume"
else
error("The given numeric argument was not one of the valid volume indices.")
end -- if
else
return
end -- if
end -- func
function select_volume()
if selected_volume + 1 > #volumes then
selected_volume = 1
else
selected_volume = selected_volume + 1
end -- if
Execute("tts_interrupt "..get_volume_name(selected_volume).." at "..tostring(volumes[selected_volume]))
end -- func

function adjust_volume(amt)
-- provide positive or negative amount. Do not include the plus sign to indicate a positive amount, lua doesn't like it.
local internal_vol = volumes[selected_volume]
if internal_vol + amt < 0 then
internal_vol = 0
elseif internal_vol + amt > 100 then
internal_volume = 100
else
internal_vol = internal_vol + amt
end -- if
volumes[selected_volume] = internal_vol
Execute("tts_interrupt "..get_volume_name(selected_volume).." now at "..tostring(volumes[selected_volume]))
end -- func

function save_volumes()
SetVariable("gv", volumes[1])
SetVariable("av", volumes[2])
SetVariable("cv", volumes[3])
end -- func

function load_volumes()
volumes[1] = tonumber(GetVariable("gv"))or 50
volumes[2] = tonumber(GetVariable("av"))or 20
volumes[3] = tonumber(GetVariable("cv"))or 30
end -- func