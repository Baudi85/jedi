#
#execute if score .timer .monster_battle matches 2 run titleraw @a actionbar {"rawtext":[{ "text": "hud:location:" },{"translate":"arena.location_banner.monster_lair.other2", "with": [ "\n" ] }]}
execute if score .timer .monster_battle matches 10 run event entity @e[type=spark:sand_beast] spark:melee
execute if score .timer .monster_battle matches 11..13 unless entity @e[type=spark:sand_beast,family=sleep] run scoreboard players set .timer .monster_battle 11
execute if score .timer .monster_battle matches 14.. run function spark/monster_battle/phase/next
execute if score .timer .monster_battle matches 11 run scoreboard players add .hint_time .monster_battle 1
execute if score .hint_time .monster_battle matches 20..100 run titleraw @a actionbar {"rawtext":[{ "text": "hud:hint:" },{"translate":"arena.hint.block", "with": [ "\n" ] }]}
execute if score .hint_time .monster_battle matches 120 run titleraw @s actionbar {"rawtext":[{ "text": "hud:clear" }]}

#
scoreboard players set .boxes .monster_battle 0
execute positioned 6000 50.00 6000 as @e[type=spark:box,r=60] run scoreboard players add .boxes .monster_battle 1

execute if score .boxes .monster_battle matches ..2 run execute positioned 5995.73 50.00 6015.00 unless entity @e[type=spark:box,r=4.5] run function spark/force/entity/box/create_size_3
execute if score .boxes .monster_battle matches ..2 run execute positioned 5997.01 50.00 5977.96 unless entity @e[type=spark:box,r=4.5] run function spark/force/entity/box/create_size_3
execute if score .boxes .monster_battle matches ..2 run execute positioned 6035.41 51.00 5987.17 unless entity @e[type=spark:box,r=4.5] run function spark/force/entity/box/create_size_3
execute if score .boxes .monster_battle matches ..2 run event entity @e[type=spark:box] spark:texture_4

#
execute as @a[tag=death_can_respawn] run effect @e[type=spark:sand_beast] instant_health

#
#effect @a[tag=respawned] regeneration 999999 0 true
title @a[tag=respawned] actionbar hud:fade_in_1
title @a[tag=dead] actionbar hud:fade_out_1

tag @a remove dead
tag @a remove respawned

#
#execute if score .timer .monster_battle matches 2 run effect @a regeneration 999999 0 true