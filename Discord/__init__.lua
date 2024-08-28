/*  
 __  __ _____ _   _       _____    
|  \/  |  ___| | | | __ _|__  /___ 
| |\/| | |_  | |_| |/ _` | / // _ \
| |  | |  _| |  _  | (_| |/ /|  __/
|_|  |_|_|   |_| |_|\__,_/____\___|
                                                                  
    Author:         MFHaZe
    Creation Year:  2023
    GitHub:         https://github.com/MFHaZe/H2M-Mod-H1-Mod-Help-Menu                                                                 
*/

function dis()
game:executecommand("say Discord ^5discord.gg/^13efF322vSd ")
end


local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!discord" or msg == "!dis" or msg == "!cord" then
		dis();
    end
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
