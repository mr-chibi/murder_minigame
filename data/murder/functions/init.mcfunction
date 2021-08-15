# Tags:
function murder:tags/join
function murder:tags/leave

# Commands:
execute as @a at @s[team=murder_op] run scoreboard players enable @s setup_join
execute as @a at @s[team=murder_op] run scoreboard players enable @s setup_leave
execute as @a at @s[team=murder_op] run scoreboard players enable @s setup_start
execute as @a at @s[team=murder_op] run scoreboard players enable @s setup_remove
execute as @a at @s[team=murder_op] run scoreboard players enable @s setup_map
execute as @a at @s[team=murder_op] run scoreboard players enable @s murder_map

# Game Operator Commands:
execute as @a at @s[team=murder_op,scores={setup_join=1..}] run function murder:commands/summon/join_murder
execute as @a at @s[team=murder_op,scores={setup_leave=1..}] run function murder:commands/summon/leave_murder
execute as @a at @s[team=murder_op,scores={setup_start=1..}] run function murder:commands/summon/start_murder
execute as @a at @s[team=murder_op,scores={setup_map=1..}] run function murder:commands/summon/setup
execute as @a at @s[team=murder_op,scores={setup_remove=1..}] run function murder:commands/remove
execute as @a at @s[team=murder_op,scores={murder_map=1..}] run function murder:commands/maps


# If player has tag, "join_murder" & is 0 - 5 blocks away from armorstand, "start" check if there is NOT "2" or more players run error:
execute as @a at @s[tag=join_murder] if entity @e[type=minecraft:armor_stand,tag=start_murder,distance=0..5] unless score murder_players murder_minigame matches 2.. run title @s actionbar [{"text": "Error, game requires 2 or more players!", "color": "red"}]


# If player has tag, "join_murder" & is 0 - 5 blocks away from armorstand, "start" check if murder players is "2" or more... run config.mcfunction:
execute as @a at @s[tag=join_murder] if entity @e[type=minecraft:armor_stand,tag=start_murder,distance=0..5] if score murder_players murder_minigame matches 2.. unless score murder_map murder_minigame matches 1.. run title @s actionbar [{"text": "Error please, select a map!", "color": "red"}]
execute as @a at @s[tag=join_murder] if entity @e[type=minecraft:armor_stand,tag=start_murder,distance=0..5] if score murder_players murder_minigame matches 2.. if score murder_map murder_minigame matches 1.. if score round_start murder_minigame matches 0 run function murder:start

#
function murder:tags/role

#
function murder:tags/victory