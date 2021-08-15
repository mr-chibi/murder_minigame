#
execute as @e[type=minecraft:armor_stand,tag=start_murder] at @s run kill @s

#
summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\": \"Start Murder\", \"color\": \"blue\"}", CustomNameVisible:1b, Invisible:1b, Tags:["murder_asset", "start_murder"]}

#
scoreboard players set @s setup_start 0