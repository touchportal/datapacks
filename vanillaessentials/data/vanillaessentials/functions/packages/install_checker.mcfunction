#> -----------------------------------------------
#> Vanilla Essentials Datapack
#> This code is protected by the GNU GPLv3 License
#> © 2020 Portyl Studios
#> https://portylstudios.com
#> -----------------------------------------------


#> install checker
# this code checks the install status of vanillaessentials
#
# how to read $ve.version hashes:
# 10901 = v1.09.01 / v1.9.1

#> clean install
execute unless score $ve.version TP_version matches 10000.. run scoreboard players set $ve.version TP_version 10000
execute if score $ve.version TP_version matches 10000.. run function vanillaessentials:packages/install

# WARNING: future features might not work
execute if score $ve.version TP_version matches 10001.. if score $DebugMessages TP_Config matches 1 run tellraw @a [{"text":""},{"text":"\n WARNING","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":"Warning generated by Vanilla Essentials"}},{"text":"\n This world was using a newer version of Vanilla Essentials, some features may not be available.","color":"gray","hoverEvent":{"action":"show_text","value":"Warning generated by Vanilla Essentials"}}]


#> End of file
#> -----------