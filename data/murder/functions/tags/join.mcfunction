#
execute as @e[type=minecraft:armor_stand,tag=join_murder] at @s if entity @p[distance=0..5,nbt=!{Inventory:[]},tag=!join_murder] run title @p actionbar [{"text": "Error, please empty your Inventory to join!", "color": "red"}]

#
execute as @e[type=minecraft:armor_stand,tag=join_murder] at @s if entity @p[distance=0..5,nbt={Inventory:[]},tag=!join_murder] run title @p actionbar [{"text": "Joined Murder Minigame", "color": "green"}]
execute as @e[type=minecraft:armor_stand,tag=join_murder] at @s if entity @p[distance=0..5,nbt={Inventory:[]},tag=!join_murder] run scoreboard players add murder_players murder_minigame 1
execute as @e[type=minecraft:armor_stand,tag=join_murder] at @s if entity @p[distance=0..5,nbt={Inventory:[]},tag=!join_murder] run tag @p[tag=!join_murder] add join_murder