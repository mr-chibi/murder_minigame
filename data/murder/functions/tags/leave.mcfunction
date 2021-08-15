#
execute as @e[type=minecraft:armor_stand,tag=leave_murder] at @s if entity @p[distance=0..5,nbt=!{Inventory:[]},tag=join_murder] run title @p actionbar [{"text": "Error, please empty your Inventory to leave!", "color": "red"}]

#
execute as @e[type=minecraft:armor_stand,tag=leave_murder] at @s if entity @p[distance=0..5,nbt=!{Inventory:[]},tag=join_murder] run bossbar set minecraft:murder_timer players

#
execute as @a at @s[nbt={Inventory:[]},tag=join_murder] if entity @e[type=minecraft:armor_stand,tag=leave_murder,distance=0..5] run title @s actionbar [{"text": "Left Murder Minigame", "color": "red"}]
execute as @a at @s[nbt={Inventory:[]},tag=join_murder] if entity @e[type=minecraft:armor_stand,tag=leave_murder,distance=0..5] run scoreboard players remove murder_players murder_minigame 1
execute as @a at @s[nbt={Inventory:[]},tag=join_murder] if entity @e[type=minecraft:armor_stand,tag=leave_murder,distance=0..5] run tag @s remove join_murder