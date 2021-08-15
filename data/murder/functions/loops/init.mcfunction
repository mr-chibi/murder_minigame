#
execute if score round_start murder_minigame matches 1 run bossbar set minecraft:murder_timer players @a[tag=join_murder]

# Update Bossbar Timer:
execute if score round_start murder_minigame matches 1 store result bossbar minecraft:murder_timer value run scoreboard players get stop murder_timer
execute if score round_start murder_minigame matches 1 store result bossbar minecraft:murder_timer max run scoreboard players get start murder_timer

# Count Down Timer:
execute if score round_start murder_minigame matches 1 if score start murder_timer < stop murder_timer run scoreboard players remove stop murder_timer 1

# Remove 1 min & Reset:
execute if score round_start murder_minigame matches 1 if score stop murder_timer matches 0 run scoreboard players remove round_end murder_timer 1
execute if score round_start murder_minigame matches 1 if score stop murder_timer matches 0 run scoreboard players set stop murder_timer 60

# Update Timer:
execute if score round_start murder_minigame matches 1 run bossbar set minecraft:murder_timer name [{"text": "Timer: "}, {"score":{"name":"round_end", "objective": "murder_timer"}}, {"text": ":"}, {"score":{"name":"stop", "objective": "murder_timer"}}]

#
schedule function murder:loops/init 1s