#> -----------------------------------------------
#> Tinkerer's Craft Datapack
#> This code is protected by the GNU GPLv3 License
#> © 2020 Portyl Studios
#> https://portylstudios.com
#> -----------------------------------------------


#> copper_pickaxe (references: ../modules/casting/drain)
# this is the timeline for copper pickaxes


execute as @s[scores={TC_OutputTimer=10}] run scoreboard players remove @s TC_lCopper 1
execute as @s[scores={TC_OutputTimer=30}] run scoreboard players remove @s TC_lCopper 1
execute as @s[scores={TC_OutputTimer=50}] run scoreboard players remove @s TC_lCopper 1
execute as @s[scores={TC_OutputTimer=60..}] run tag @s add TC_stoppour

execute as @s[tag=TC_stoppour] at @s run function tinkererscraft:modules/casting/custom_items


#> End of file
#> -----------