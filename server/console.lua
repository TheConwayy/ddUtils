--[[
* VARIABLES
--]]

local resourceName = 'dd-utils'
local discordInvite = 'https://discord.gg/3rMN9uZAnf'
local tagline = 'This server uses scripts from:'
local art = [[
^3
            $$$$$$$\                      $$\             $$$$$$$\                                $$\                                                        $$\                 
            $$  __$$\                     $$ |            $$  __$$\                               $$ |                                                       $$ |                
$$$$\       $$ |  $$ |$$\   $$\  $$$$$$$\ $$ |  $$\       $$ |  $$ | $$$$$$\ $$\    $$\  $$$$$$\  $$ | $$$$$$\   $$$$$$\  $$$$$$\$$$$\   $$$$$$\  $$$$$$$\ $$$$$$\         $$$$\ 
\____|      $$ |  $$ |$$ |  $$ |$$  _____|$$ | $$  |      $$ |  $$ |$$  __$$\\$$\  $$  |$$  __$$\ $$ |$$  __$$\ $$  __$$\ $$  _$$  _$$\ $$  __$$\ $$  __$$\\_$$  _|        \____|
$$$$\       $$ |  $$ |$$ |  $$ |$$ /      $$$$$$  /       $$ |  $$ |$$$$$$$$ |\$$\$$  / $$$$$$$$ |$$ |$$ /  $$ |$$ /  $$ |$$ / $$ / $$ |$$$$$$$$ |$$ |  $$ | $$ |          $$$$\ 
\____|      $$ |  $$ |$$ |  $$ |$$ |      $$  _$$<        $$ |  $$ |$$   ____| \$$$  /  $$   ____|$$ |$$ |  $$ |$$ |  $$ |$$ | $$ | $$ |$$   ____|$$ |  $$ | $$ |$$\       \____|
            $$$$$$$  |\$$$$$$  |\$$$$$$$\ $$ | \$$\       $$$$$$$  |\$$$$$$$\   \$  /   \$$$$$$$\ $$ |\$$$$$$  |$$$$$$$  |$$ | $$ | $$ |\$$$$$$$\ $$ |  $$ | \$$$$  |            
            \_______/  \______/  \_______|\__|  \__|      \_______/  \_______|   \_/     \_______|\__| \______/ $$  ____/ \__| \__| \__| \_______|\__|  \__|  \____/             
                                                                                                                $$ |                                                             
                                                                                                                $$ |                                                             
                                                                                                                \__|                                                             
^7
]]
local infoArt = [[
^3        ___                              ___       __           
  ___  | _ \___ ______ _  _ _ _ __ ___  |_ _|_ _  / _|___   ___ 
 |___| |   / -_|_-< _ \ || | '_/ _/ -_)  | || ' \|  _/ _ \ |___|
 |___| |_|_\___/__|___/\_,_|_| \__\___| |___|_||_|_| \___/ |___|^7
]]

--[[
* SEND CONSOLE INFORMATION
--]]

if Config.ConsoleBranding then
  print(tagline)
  print(art)
end

Citizen.Wait(1000)
print(infoArt)