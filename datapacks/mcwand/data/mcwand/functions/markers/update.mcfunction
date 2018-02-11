#
# mcwand:markers/update
scoreboard players set @s woakplanks 0
scoreboard players set @s woakslab 0
scoreboard players set @s wspruceplanks 0
scoreboard players set @s wspruceslab 0

scoreboard players set #success wand 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{builderswand:1b}}]}] run scoreboard players set #success wand 1

execute if score #success wand matches 1 run function mcwand:markers/castandbuild
