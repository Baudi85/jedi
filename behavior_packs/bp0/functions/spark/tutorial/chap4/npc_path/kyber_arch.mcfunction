summon spark:breadcrumb_2 3413 34.25 -112
summon spark:breadcrumb_1 3413 34.25 -87
execute positioned 3413 34 -54.5 run dialogue change @e[r=5,c=1,family=npc] spark:jedi_temple.generic.follow_me
execute positioned 3413 34 -54.5 run event entity @e[r=5,c=1,family=npc] spark:move1

scoreboard players set @s SS_const 600
scoreboard players set @s timer 1