#
# mcwand:markers/begincast
scoreboard players set #raycast wand 0
execute positioned ~ ~1.62 ~ run function mcwand:markers/raycast

execute if entity @e[type=area_effect_cloud,tag=oldblock] run function mcwand:build/start

kill @e[type=area_effect_cloud,tag=newblock]
kill @e[type=area_effect_cloud,tag=oldblock]
