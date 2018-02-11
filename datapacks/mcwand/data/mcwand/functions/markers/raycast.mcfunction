#
# mcwand:markers/raycast
scoreboard players add #raycast wand 1

execute if score #raycast wand < #raycastlimit wand if block ~ ~ ~ #mcwand:wandable run function mcwand:markers/foundblock
execute if score #raycast wand < #raycastlimit wand unless block ~ ~ ~ #mcwand:wandable positioned ^ ^ ^0.05 run function mcwand:markers/raycast
