#> -----------------------------------------------
#> Tinkerer's Craft Datapack
#> This code is protected by the GNU GPLv3 License
#> © 2020 Portyl Studios
#> https://portylstudios.com
#> -----------------------------------------------


#> install
# this code installs all the required components for Tinkerer's Craft
#
# how to read $tc.api hashes:
# 210 = v2.1 (disabled)
# 351 = v3.5 (enabled)


# set api version
execute unless score $tc.api TP_version matches 201.. run scoreboard players set $tc.api TP_version 201

# install msg
tellraw @a [{"text":""},{"text":" +","color":"green"},{"text":" [Tinkerer's Craft] ","color":"aqua","hoverEvent":{"action":"show_text","value":"As if the nether update wasn't enough."}},{"text":"v2.0.0"},{"text":" installed successfully","color":"gray"}]


# core variables
#scoreboard objectives add give trigger [{"text":"Global Item Giver","color":"white"}]

# randomizers
# r6
scoreboard objectives add TC_rand_6 dummy [{"text":"Randomizer (6) for Tinkerer's Craft","color":"gold"}]
# r20
scoreboard objectives add TC_rand_20 dummy [{"text":"Randomizer (20) for Tinkerer's Craft","color":"gold"}]

# timers
scoreboard objectives add TC_OutputTimer dummy [{"text":"Output Timer","color":"gold"}]
scoreboard objectives add TC_SmeltingTimer dummy [{"text":"Smelting Timer","color":"gold"}]
scoreboard objectives add TC_FlamingTimer dummy [{"text":"Flaming Particle Timer","color":"gold"}]
scoreboard objectives add TC_ShinyTimer dummy [{"text":"Shiny Particle Timer","color":"gold"}]
scoreboard objectives add TC_LungeTimer minecraft.custom:minecraft.sneak_time [{"text":"Lunge Sneak Time","color":"gold"}]
scoreboard objectives add TC_RiptideTimer dummy [{"text":"Riptide Timer","color":"gold"}]

# calculation buffers
scoreboard objectives add TC_bIronOre dummy [{"text":"Iron Ore Buffer","color":"gold"}]
scoreboard objectives add TC_bGoldOre dummy [{"text":"Gold Ore Buffer","color":"gold"}]
scoreboard objectives add TC_bIron dummy [{"text":"Iron Buffer","color":"gold"}]
scoreboard objectives add TC_bGold dummy [{"text":"Gold Buffer","color":"gold"}]
scoreboard objectives add TC_bIronBlock dummy [{"text":"Iron Block Buffer","color":"gold"}]
scoreboard objectives add TC_bGoldBlock dummy [{"text":"Gold Block Buffer","color":"gold"}]
scoreboard objectives add TC_bObsidian dummy [{"text":"Obsidian Buffer","color":"gold"}]

# storage
scoreboard objectives add TC_lCapacity dummy [{"text":"Storage Capacity","color":"gold"}]
scoreboard objectives add TC_lIron dummy [{"text":"Amount of Liquid Iron stored","color":"gold"}]
scoreboard objectives add TC_lGold dummy [{"text":"Amount of Liquid Gold stored","color":"gold"}]
scoreboard objectives add TC_lObsidian dummy [{"text":"Amount of Liquid Obsidian stored","color":"gold"}]
scoreboard objectives add TC_lIrgol dummy [{"text":"Amount of Liquid Irgol stored","color":"gold"}]
scoreboard objectives add TC_lObdiam dummy [{"text":"Amount of Liquid Obdiam stored","color":"gold"}]

# hardcoded array
scoreboard objectives add TC_NumberArray dummy [{"text":"Numerical Array for TC","color":"gold"}]
scoreboard players set One TC_NumberArray 1
scoreboard players set Two TC_NumberArray 2
scoreboard players set Three TC_NumberArray 3
scoreboard players set Four TC_NumberArray 4
scoreboard players set Five TC_NumberArray 5
scoreboard players set Six TC_NumberArray 6
scoreboard players set Seven TC_NumberArray 7
scoreboard players set Eight TC_NumberArray 8
scoreboard players set Nine TC_NumberArray 9
scoreboard players set Ten TC_NumberArray 10


#> End of file
#> -----------
