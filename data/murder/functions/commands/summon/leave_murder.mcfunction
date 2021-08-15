#
execute as @e[type=minecraft:armor_stand,tag=leave_murder] at @s run kill @s

#
summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\": \"Leave Murder\", \"color\": \"#CB0000\"}", CustomNameVisible:1b, Invisible:1b, Tags:["murder_asset", "leave_murder"]}

#
scoreboard players set @s setup_leave 0