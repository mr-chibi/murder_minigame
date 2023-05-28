# Array:
scoreboard objectives remove murder_minigame

# Timer
scoreboard objectives remove murder_timer

# Commands:
scoreboard objectives remove setup_join
scoreboard objectives remove setup_leave
scoreboard objectives remove setup_start
scoreboard objectives remove setup_remove
scoreboard objectives remove setup_map
scoreboard objectives remove murder_map

#
scoreboard objectives remove murder_tp
scoreboard objectives remove murder_role
scoreboard objectives remove murder_round

# Teams:
team remove murder_op
team remove innocents
team remove murderer

#
scoreboard objectives remove killed_innocents
scoreboard objectives remove killed_murderer

# Bossbars:
bossbar remove minecraft:murder_timer

#
datapack disable "file/mr_chibis_murder"