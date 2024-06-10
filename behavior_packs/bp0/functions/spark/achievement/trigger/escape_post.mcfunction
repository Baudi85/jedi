# © Spark Universe, 2023
# authors: FetchBot
# description: trigger the unlocking of an achievement
# called by: <TBD>

execute if score "Escape_the_Battleship_Post" SS_achievements matches 0 run title @a actionbar hud:achievement:escape_the_battleship.challenge
scoreboard players set "Escape_the_Battleship_Post" SS_achievements 1
event entity @e[family=achievement_display] spark:update

playsound sound.spark.achievement @a