# builderswand
Builder's wand functionality in vanilla Minecraft 1.13 datapacks

This datapack allows you to place multiple blocks of a single type, when placed on a surface of that same block. Just hold an item in your offhand with nbt tag data {builderswand:1b} and place some blocks!

There are several limitations, which I'm hopefully going to be able to fix with some more thinking. Some of the problems I'm working on are:

* The 0 0 0 chunk needs to be loaded, as I'm using the block at 0 1 0 to store block types
* You need to whitelist block types (see below)
* I place blocks indiscriminately, so if your player is in a space where a block would get placed, you'd better bring some fast tools with you

I've only whitelisted planks and slabs, both oak and spruce, as I'm intending this for a limited-resource skyblock. If you'd like to whitelist additional blocks, you need to add the following, using oak_stairs as an example:

* Add to load.mcfunction: scoreboard objectives add woakstairs minecraft.used:minecraft.oak_stairs
* Add to tick.mcfunction: execute as @a[scores={woakstairs=1..}] at @s run function mcwand:markers/update
* Add to markers/update.mcfunction: scoreboard players set @s woakstairs 0
* Add to build/takeitem.mcfunction: execute if block 0 1 0 minecraft:oak_stairs store success score #tookitem wand run clear @s minecraft:oak_stairs 1
* Add to tags/blocks/wandable.json: "minecraft:oak_stairs"

Comments are more than welcome, as I'm sure I could be doing many things better. Hope you enjoy it!

Cheers
mcskware
2018-02-11
