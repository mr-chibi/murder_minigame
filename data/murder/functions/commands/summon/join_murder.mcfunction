#
execute as @e[type=minecraft:armor_stand,tag=join_murder] at @s run kill @s

#
summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\": \"Join Murder\", \"color\": \"green\"}", CustomNameVisible:1b, Invisible:1b, Tags:["murder_asset", "join_murder"]}

#
scoreboard players set @s setup_join 0