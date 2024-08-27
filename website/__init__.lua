
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
