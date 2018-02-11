#
# mcwand:build/yplus/recurse
execute if blocks ~-1 ~ ~-1 ~-1 ~ ~-1 0 1 0 all if score #build wand < #buildlimit wand positioned ~-1 ~ ~-1 run function mcwand:build/yplus/base
execute if blocks ~00 ~ ~-1 ~00 ~ ~-1 0 1 0 all if score #build wand < #buildlimit wand positioned ~00 ~ ~-1 run function mcwand:build/yplus/base
execute if blocks ~01 ~ ~-1 ~01 ~ ~-1 0 1 0 all if score #build wand < #buildlimit wand positioned ~01 ~ ~-1 run function mcwand:build/yplus/base
execute if blocks ~01 ~ ~00 ~01 ~ ~00 0 1 0 all if score #build wand < #buildlimit wand positioned ~01 ~ ~00 run function mcwand:build/yplus/base
execute if blocks ~01 ~ ~01 ~01 ~ ~01 0 1 0 all if score #build wand < #buildlimit wand positioned ~01 ~ ~01 run function mcwand:build/yplus/base
execute if blocks ~00 ~ ~01 ~00 ~ ~01 0 1 0 all if score #build wand < #buildlimit wand positioned ~00 ~ ~01 run function mcwand:build/yplus/base
execute if blocks ~-1 ~ ~01 ~-1 ~ ~01 0 1 0 all if score #build wand < #buildlimit wand positioned ~-1 ~ ~01 run function mcwand:build/yplus/base
execute if blocks ~-1 ~ ~00 ~-1 ~ ~00 0 1 0 all if score #build wand < #buildlimit wand positioned ~-1 ~ ~00 run function mcwand:build/yplus/base
