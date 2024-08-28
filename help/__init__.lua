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

game:executecommand("say ^1!Help For Help Menu")

function help()

game:executecommand("say ^1!help1 !help2 !help3 !help4 !help5 !help6 ETC^5+help2")
end

function help1()

game:executecommand("say ^1!Website ^3For ^2H1-Mod ^3Help & Our ^2INFO! ^5+help2")
end

function help2()

game:executecommand("say ^3Do ^1!Discord ^3To Get The Discord Server Link ^5+help3")
end

function help3()

game:executecommand("say To ^1Report ^7do ^1!Report <Player Name> <Reason>^7! ^5+help4")
end

function help4()

game:executecommand("say ^3To change to 3rd Peroson use ^1!third^7, ^3To go back 1st Person use ^1!first ^5+help4")
end

function help5()

game:executecommand("say ^3Do ^1!skip ^3To Change Map ^5+help5")
end

function help6()

game:executecommand("say ^3To change gamemodes use ^1! ^3 in the chat followed by the gamemode. expl: ^1!tdm,!kc,!dom...ect")
end



local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!help me" or msg == "!help" then
		help();
    end

	if msg == "!help me1" or msg == "!help1" then
		help1();
    end

	if msg == "!help me2" or msg == "!help2" then
		help2();
    end

	if msg == "!help me3" or msg == "!help3" then
		help3();
    end

	if msg == "!help me4" or msg == "!help4" then
		help4();
    end

	if msg == "!help me5" or msg == "!help5" then
		help5();
    end

	if msg == "!help me6" or msg == "!help6" then
		help6();
    end

end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
