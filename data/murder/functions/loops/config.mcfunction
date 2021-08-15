# Execute if there's 2 or more players run if innocents have no players, check murderers team if they have 2 or more than set player to innocent:
execute if score murder_players murder_minigame matches 2 if score innocent_players murder_minigame matches 0 if score murderer_players murder_minigame matches 2.. run execute as @r[tag=join_murder] at @s run scoreboard players set @s murder_role 1

# Execute if there's 2 or more players run if murderer have no players, check innocent team if they have 2 or more than set player to murderer:
execute if score murder_players murder_minigame matches 2 if score murderer_players murder_minigame matches 0 if score innocent_players murder_minigame matches 2.. run execute as @r[tag=join_murder] at @s run scoreboard players set @s murder_role 2

# Execute if there's 3 or more players run if detectives have no players, check innocent team if they have 1 or more than set player to murderer:
execute if score murder_players murder_minigame matches 3.. if score innocent_players murder_minigame matches 1.. run execute as @r[tag=join_murder] at @s run scoreboard players set @s murder_role 1
execute if score murder_players murder_minigame matches 3.. if score detective_players murder_minigame matches 1.. run execute as @r[tag=join_murder] at @s run scoreboard players set @s murder_role 1
execute if score murder_players murder_minigame matches 3.. if score detective_players murder_minigame matches 1.. run execute as @r[tag=join_murder] at @s run scoreboard players set @s murder_role 2

#
execute store result score innocent_players murder_minigame if entity @a[scores={murder_role=1}]
execute store result score murderer_players murder_minigame if entity @a[scores={murder_role=2}]
execute store result score detective_players murder_minigame if entity @a[scores={murder_role=3}]

