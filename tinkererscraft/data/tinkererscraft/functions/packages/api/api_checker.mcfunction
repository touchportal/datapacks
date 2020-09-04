#> -----------------------------------------------
#> Tinkerer's Craft Datapack
#> This code is protected by the GNU GPLv3 License
#> © 2020 Portyl Studios
#> https://portylstudios.com
#> -----------------------------------------------


#> api checker
# this code checks the api status of Tinkerer's Craft


# reset api state to run checker
scoreboard players reset $api.tc.h TP_version
tellraw @a [{"text":""},{"text":" ●","color":"aqua"},{"text":" Restarting the Tinkerer's Craft API...","color":"gray"}]


#> api_install
execute if score $tc.api TP_version matches 201 if score $h.api TP_version matches 201 run function harvester:packages/api/api_install

#> WARNING: tc api turned off
execute if score $tc.api TP_version matches 200 run tellraw @a [{"text":""},{"text":"\n WARNING","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":"Warning generated by Tinkerer's Craft API"}},{"text":"\n The Tinkerer's Craft API is disabled. Connected features will not work.","color":"gray","hoverEvent":{"action":"show_text","value":"Warning generated by Tinkerer's Craft API"}}]

#> WARNING: h api turned off
execute if score $h.api TP_version matches 200 run tellraw @a [{"text":""},{"text":"\n WARNING","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":"Warning generated by Harvester's API"}},{"text":"\n Harvester's API is disabled. Connected features will not work.","color":"gray","hoverEvent":{"action":"show_text","value":"Warning generated by Harvester's API"}}]

#> WARNING: wrong version / harvester not installed
execute if score $tc.api TP_version matches 201 unless score $h.api TP_version matches 200..201 run tellraw @a [{"text":""},{"text":"\n WARNING","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":"Warning generated by Tinkerer's Craft API"}},{"text":"\n Harvester's API did not respond appropriately. Connected features will not work.","color":"gray","hoverEvent":{"action":"show_text","value":"Warning generated by Tinkerer's Craft API"}}]


#> End of file
#> -----------