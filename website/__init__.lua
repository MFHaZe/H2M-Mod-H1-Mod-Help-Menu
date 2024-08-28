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
game:executecommand("say Website ^6www.HaZey^2Network.com ")
end


local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!website" or msg == "!web" or msg == "!site" then
		dis();
    end
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
