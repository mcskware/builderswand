#
# mcwand:markers/castnext

scoreboard players add #raycast wand 1

# raycast until you're in a new block
execute store success score #sameblock wand align xyz positioned ~0.5 ~ ~0.5 run data get entity @e[type=area_effect_cloud,distance=..0.01,tag=newblock,limit=1]

execute if score #raycast wand < #raycastlimit wand if score #sameblock wand matches 0 if blocks ~ ~ ~ ~ ~ ~ 0 1 0 all run function mcwand:markers/foundsecondblock
execute if score #raycast wand < #raycastlimit wand if score #sameblock wand matches 1 positioned ^ ^ ^0.05 run function mcwand:markers/castnext
