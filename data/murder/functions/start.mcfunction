# Clear players Inventory:
clear @a[tag=join_murder]

# Start Minigame:
scoreboard players set round_start murder_minigame 1

# Display Scoreboard:
bossbar set minecraft:murder_timer visible true

# Setup Round Timer:
scoreboard players add round_secs murder_timer 0
scoreboard players set round_min murder_timer 0
scoreboard players set round_end murder_timer 2
scoreboard players set stop murder_timer 60
scoreboard players set start murder_timer 0

#
function murder:maps

# Reset Teams:
scoreboard players set innocent_players murder_minigame 0
scoreboard players set murderer_players murder_minigame 0

# Store result of amount of players:
execute store result score innocent_players murder_minigame if entity @a[scores={murder_role=1}]
execute store result score murderer_players murder_minigame if entity @a[scores={murder_role=2}]
execute store result score detective_players murder_minigame if entity @a[scores={murder_role=3}]

# Add Detective to innocents:
execute if score innocent_players murder_minigame matches 0 run scoreboard players operation innocent_players murder_minigame += detective_players murder_minigame

# Prevent Team from having more than one role If there's 2 players:
execute if score murder_players murder_minigame matches 2 if score innocent_players murder_minigame matches 0 if score murderer_players murder_minigame matches 2.. run function murder:loops/config
execute if score murder_players murder_minigame matches 2 if score innocent_players murder_minigame matches 1.. if score murderer_players murder_minigame matches 0 run function murder:loops/config

# Prevent Team from having more than one role If there's more than 3 players:
execute if score murder_players murder_minigame matches 3.. if score innocent_players murder_minigame matches 0 if score murderer_players murder_minigame matches 2.. run function murder:loops/config
execute if score murder_players murder_minigame matches 3.. if score innocent_players murder_minigame matches 1.. if score murderer_players murder_minigame matches 0 run function murder:loops/config
execute if score murder_players murder_minigame matches 3.. if score detective_players murder_minigame matches 2.. run function murder:loops/config

# Give Team Tools:
give @a[scores={murder_role=1}] minecraft:wooden_sword
give @a[scores={murder_role=2}] minecraft:stone_sword
give @a[scores={murder_role=3}] minecraft:iron_sword
