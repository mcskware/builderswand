#
# mcwand:build/findplane

execute store result score #newx wand run data get entity @e[type=area_effect_cloud,tag=newblock,limit=1] Pos[0]
execute store result score #newy wand run data get entity @e[type=area_effect_cloud,tag=newblock,limit=1] Pos[1]
execute store result score #newz wand run data get entity @e[type=area_effect_cloud,tag=newblock,limit=1] Pos[2]

execute store result score #oldx wand run data get entity @e[type=area_effect_cloud,tag=oldblock,limit=1] Pos[0]
execute store result score #oldy wand run data get entity @e[type=area_effect_cloud,tag=oldblock,limit=1] Pos[1]
execute store result score #oldz wand run data get entity @e[type=area_effect_cloud,tag=oldblock,limit=1] Pos[2]

scoreboard players set #build wand 0

execute if score #newx wand > #oldx wand at @e[type=area_effect_cloud,tag=oldblock,limit=1] run function mcwand:build/xplus/base
execute if score #newx wand < #oldx wand at @e[type=area_effect_cloud,tag=oldblock,limit=1] run function mcwand:build/xminus/base
execute if score #newy wand > #oldy wand at @e[type=area_effect_cloud,tag=oldblock,limit=1] run function mcwand:build/yplus/base
execute if score #newy wand < #oldy wand at @e[type=area_effect_cloud,tag=oldblock,limit=1] run function mcwand:build/yminus/base
execute if score #newz wand > #oldz wand at @e[type=area_effect_cloud,tag=oldblock,limit=1] run function mcwand:build/zplus/base
execute if score #newz wand < #oldz wand at @e[type=area_effect_cloud,tag=oldblock,limit=1] run function mcwand:build/zminus/base
