# Remove Role is murder players are 2:
execute if score murder_players murder_minigame matches 2 run tag @a[scores={murder_role=1}] remove murderer
execute if score murder_players murder_minigame matches 2 run tag @a[scores={murder_role=2}] remove innocent

# Remove Role is murder players are 3 or less [Innocent]:
execute if score murder_players murder_minigame matches 3.. run tag @a[scores={murder_role=1}] remove murderer
execute if score murder_players murder_minigame matches 3.. run tag @a[scores={murder_role=1}] remove detective

# Remove Role is murder players are 3 or less [Murder]:
execute if score murder_players murder_minigame matches 3.. run tag @a[scores={murder_role=2}] remove innocent
execute if score murder_players murder_minigame matches 3.. run tag @a[scores={murder_role=2}] remove detective

# Remove Role is murder players are 3 or less [Detective]:
execute if score murder_players murder_minigame matches 3.. run tag @a[scores={murder_role=3}] remove innocent
execute if score murder_players murder_minigame matches 3.. run tag @a[scores={murder_role=3}] remove murderer
execute if score murder_players murder_minigame matches 3.. if score detective_players murder_minigame matches 2.. run tag @a[scores={murder_role=3},tag=detective,limit=1,sort=random] remove detective

# Display Role:
execute if score murder_players murder_minigame matches 2.. run title @a[scores={murder_role=1}] actionbar [{"text": "Role: "}, {"text": "innocent", "color": "green"}]
execute if score murder_players murder_minigame matches 2.. run title @a[scores={murder_role=2}] actionbar [{"text": "Role: "}, {"text": "murderer", "color": "red"}]
execute if score murder_players murder_minigame matches 3.. run title @a[scores={murder_role=3}] actionbar [{"text": "Role: "}, {"text": "detective", "color": "aqua"}]

#
execute if score murder_players murder_minigame matches 2.. run team join innocents @a[scores={murder_role=1}]
execute if score murder_players murder_minigame matches 2.. run team join murderer @a[scores={murder_role=2}]
execute if score murder_players murder_minigame matches 3.. run team join innocents @a[scores={murder_role=3}]