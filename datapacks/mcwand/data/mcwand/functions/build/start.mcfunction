#
# mcwand:build/start

# save the block type somewhere
execute at @e[type=area_effect_cloud,tag=oldblock] run clone ~ ~ ~ ~ ~ ~ 0 1 0
execute at @e[type=area_effect_cloud,tag=oldblock] run function mcwand:build/findplane
