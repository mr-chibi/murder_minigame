#
execute as @e[type=minecraft:armor_stand,tag=murder_asset] at @s unless entity @a[distance=0..5] run tellraw @a[distance=0..5] [{"text": "Please, stand 0..5 blocks next to map asset to remove.", "color": "green"}]

#
execute as @e[type=minecraft:armor_stand,tag=murder_asset] at @s if entity @a[distance=0..5] run tellraw @a[distance=0..5] [{"text": "Removed Map Asset", "color": "green"}]
execute as @e[type=minecraft:armor_stand,tag=murder_asset] at @s if entity @a[distance=0..5] run kill @s 

#
scoreboard players set @s setup_remove 0