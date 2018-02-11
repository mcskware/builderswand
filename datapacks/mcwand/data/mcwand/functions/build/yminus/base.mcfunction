#
# mcwand:build/yminus/base

scoreboard players set #success wand 0
execute if blocks ~ ~ ~ ~ ~ ~ 0 1 0 all align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:air store success score #success wand run function mcwand:build/yminus/clone
# special case for the newblock position
execute if score #success wand matches 0 align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[type=area_effect_cloud,tag=newblock,distance=..0.1] run scoreboard players set #success wand 1

execute if score #success wand matches 1 run function mcwand:build/yminus/recurse
