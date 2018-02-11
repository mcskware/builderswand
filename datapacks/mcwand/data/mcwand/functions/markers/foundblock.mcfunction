#
# mcwand:markers/foundblock

# set a marker area effect cloud here
execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["newblock"],Duration:2147483647}

# find the next block in the eyeline
function mcwand:markers/findnext
