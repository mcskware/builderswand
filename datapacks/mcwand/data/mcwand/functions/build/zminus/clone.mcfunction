#
# mcwand:build/zminus/clone

execute if entity @s[gamemode=!creative] run function mcwand:build/takeitem
execute if entity @s[gamemode=creative] run scoreboard players set #tookitem wand 1

execute if score #tookitem wand matches 1 run scoreboard players add #build wand 1
execute if score #tookitem wand matches 1 run clone ~ ~ ~ ~ ~ ~ ~ ~ ~-1
