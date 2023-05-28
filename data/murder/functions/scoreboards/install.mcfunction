# Array:
scoreboard objectives add murder_minigame dummy

# Variables:
scoreboard players add murder_map murder_minigame 0
scoreboard players add murder_players murder_minigame 0

# Timer
scoreboard objectives add murder_timer dummy
scoreboard players add round_secs murder_timer 0
scoreboard players set round_min murder_timer 0
scoreboard players set round_end murder_timer 2

#
scoreboard players set stop murder_timer 60
scoreboard players set start murder_timer 0

#
scoreboard players add round_start murder_minigame 0

# Murder Player Types:
scoreboard players add innocent_players murder_minigame 0
scoreboard players add murderer_players murder_minigame 0
scoreboard players add detective_players murder_minigame 0

# Commands:
scoreboard objectives add setup_join trigger
scoreboard objectives add setup_leave trigger
scoreboard objectives add setup_start trigger
scoreboard objectives add setup_remove trigger
scoreboard objectives add setup_map trigger
scoreboard objectives add murder_map trigger

#
scoreboard objectives add murder_tp dummy
scoreboard objectives add murder_role dummy
scoreboard objectives add murder_round dummy
scoreboard players set killed_innocents murder_round 0
scoreboard players set killed_murderers murder_round 0
scoreboard players add role_victory murder_round 0




# Teams:
team add murder_op
team add innocents
team add murderer

#
team modify innocents color green
team modify murderer color red

#
scoreboard objectives add killed_innocents teamkill.green
scoreboard objectives add killed_murderer teamkill.red

# Bossbars:
bossbar add murder_timer "murder_timer"
bossbar set minecraft:murder_timer color red 