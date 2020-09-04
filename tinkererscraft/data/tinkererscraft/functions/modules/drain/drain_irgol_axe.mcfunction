#> -----------------------------------------------
#> Tinkerer's Craft Datapack
#> This code is protected by the GNU GPLv3 License
#> © 2020 Portyl Studios
#> https://portylstudios.com
#> -----------------------------------------------


#> drain_irgol_axe
# this is the timeline for irgol axes


execute as @s[scores={TC_OutputTimer=20}] run scoreboard players remove @s TC_lIrgol 1
execute as @s[scores={TC_OutputTimer=40}] run scoreboard players remove @s TC_lIrgol 1
execute as @s[scores={TC_OutputTimer=60}] run scoreboard players remove @s TC_lIrgol 1
execute as @s[scores={TC_OutputTimer=80..}] run tag @s add TC_stoppour

execute as @s[tag=TC_stoppour] at @s run function tinkererscraft:modules/casting_item


#> End of file
#> -----------
