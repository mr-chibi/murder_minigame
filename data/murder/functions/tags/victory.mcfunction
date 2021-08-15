###########################################################################################
# Store Results of killed murder:
###########################################################################################
execute store result score killed_murderers murder_round if entity @a[scores={killed_murderer=1..}]

# Victory Condition:
execute if score killed_murderers murder_round matches 1.. if score killed_murderers murder_round = murderer_players murder_minigame run scoreboard players set role_victory murder_round 1

# Innocents win:
execute if score role_victory murder_round matches 1 run title @a[tag=join_murder] title [{"text": "innocents win!", "color": "green"}]

#
execute if score role_victory murder_round matches 1 run scoreboard players reset @a[tag=join_murder] killed_murderer
execute if score role_victory murder_round matches 1 run scoreboard players reset @a[tag=join_murder] killed_innocents

#
execute if score role_victory murder_round matches 1 run execute as @e[type=minecraft:armor_stand,tag=leave_murder] at @s run tp @a[tag=join_murder] @s




###########################################################################################
# Reset Condition:
###########################################################################################
execute if score role_victory murder_round matches 1 run scoreboard players set detective_players murder_minigame 0
execute if score role_victory murder_round matches 1 run scoreboard players set innocent_players murder_minigame 0
execute if score role_victory murder_round matches 1 run scoreboard players set murderer_players murder_minigame 0

execute if score role_victory murder_round matches 1 run scoreboard players set killed_innocents murder_round 0
execute if score role_victory murder_round matches 1 run scoreboard players set killed_murderers murder_round 0
execute if score role_victory murder_round matches 1 run scoreboard players set round_start murder_minigame 0

#
execute if score role_victory murder_round matches 1 run scoreboard players reset @a[tag=join_murder] murder_role
execute if score role_victory murder_round matches 1 run team leave @a[tag=join_murder,team=innocents]
execute if score role_victory murder_round matches 1 run team leave @a[tag=join_murder,team=murderers]

#
execute if score role_victory murder_round matches 1 run clear @a[tag=join_murder]
execute if score role_victory murder_round matches 1 run scoreboard players set role_victory murder_round 0


#
execute if score role_victory murder_round matches 1 run scoreboard players set stop murder_timer 0
execute if score role_victory murder_round matches 1 run scoreboard players set round_min murder_timer 0
execute if score role_victory murder_round matches 1 run scoreboard players set round_secs murder_timer 0
execute if score role_victory murder_round matches 1 run scoreboard players set start murder_timer 0
execute if score role_victory murder_round matches 1 run scoreboard players set round_end murder_timer 0


#
execute if score role_victory murder_round matches 1 run tag @a[tag=join_murder] remove join_murder
execute if score role_victory murder_round matches 1 run execute as @a at @s run bossbar set minecraft:murder_timer players

# Remove Scoreboard:
execute if score role_victory murder_round matches 1 run scoreboard players set role_victory murder_round 0




###########################################################################################
# Store Results of killed murder:
###########################################################################################
execute store result score killed_innocents murder_round if entity @a[scores={killed_innocents=1..}]

# Victory Condition:
execute if score killed_innocents murder_round matches 1.. if score killed_innocents murder_round = murderer_players murder_minigame run scoreboard players set role_victory murder_round 2

# Murders win
execute if score role_victory murder_round matches 2 run title @a[tag=join_murder] title [{"text": "murderer wins!", "color": "red"}]

#
execute if score role_victory murder_round matches 2 run scoreboard players reset @a[tag=join_murder] killed_murderer
execute if score role_victory murder_round matches 2 run scoreboard players reset @a[tag=join_murder] killed_innocents

#
execute if score role_victory murder_round matches 2 run execute as @e[type=minecraft:armor_stand,tag=leave_murder] at @s run tp @a[tag=join_murder] @s



###########################################################################################
# Reset Condition:
###########################################################################################
execute if score role_victory murder_round matches 2 run scoreboard players set detective_players murder_minigame 0
execute if score role_victory murder_round matches 2 run scoreboard players set innocent_players murder_minigame 0
execute if score role_victory murder_round matches 2 run scoreboard players set murderer_players murder_minigame 0

execute if score role_victory murder_round matches 2 run scoreboard players set killed_innocents murder_round 0
execute if score role_victory murder_round matches 2 run scoreboard players set killed_murderers murder_round 0
execute if score role_victory murder_round matches 2 run scoreboard players set round_start murder_minigame 0

#
execute if score role_victory murder_round matches 2 run scoreboard players reset @a[tag=join_murder] murder_role
execute if score role_victory murder_round matches 2 run team leave @a[tag=join_murder,team=innocents]
execute if score role_victory murder_round matches 2 run team leave @a[tag=join_murder,team=murderers]

#
execute if score role_victory murder_round matches 2 run clear @a[tag=join_murder]
execute if score role_victory murder_round matches 2 run scoreboard players set role_victory murder_round 0



#
execute if score role_victory murder_round matches 2 run scoreboard players set stop murder_timer 0
execute if score role_victory murder_round matches 2 run scoreboard players set round_min murder_timer 0
execute if score role_victory murder_round matches 2 run scoreboard players set round_secs murder_timer 0
execute if score role_victory murder_round matches 2 run scoreboard players set start murder_timer 0
execute if score role_victory murder_round matches 2 run scoreboard players set round_end murder_timer 0

#
execute if score role_victory murder_round matches 2 run tag @a[tag=join_murder] remove join_murder
execute if score role_victory murder_round matches 2 run execute as @a at @s run bossbar set minecraft:murder_timer players

# Remove Scoreboard:
execute if score role_victory murder_round matches 2 run scoreboard players set role_victory murder_round 0