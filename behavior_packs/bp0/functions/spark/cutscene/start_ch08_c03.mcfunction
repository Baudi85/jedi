### start cutscene ch09 c01 kamino arrive (likely not true, this is probably the sandbeast one)
scoreboard players set .ch08_c03 CS_trigger 1
scoreboard players set .timer CS_timer 0
camera @a[tag=!dev] set minecraft:first_person

tickingarea add circle 6013.5 50 5999.5 1 tmp.cutscene.0
tickingarea add circle 6006.5 50.00 5999.5 1 tmp.cutscene.1

scoreboard players set .cs_loading CS_trigger 0
title @a[tag=!dev] actionbar hud:fade_out_1
function spark/cutscene/load