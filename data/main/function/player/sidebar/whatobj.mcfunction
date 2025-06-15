$scoreboard players set %whatdoin sidebar_$(number) 4
$execute unless score @s quest_active matches 1.. run scoreboard players display name %whatdoin sidebar_$(number) " §eNone"
$execute unless score @s slayer_active matches 1.. if score @s quest_active matches 1 run scoreboard players display name %whatdoin sidebar_$(number) " §eKill §c§l$(hunter_amount)§r§c/§c§l15 §eCows"
$execute if score @s slayer_active matches 2.. run scoreboard players display name %whatdoin sidebar_$(number) " §eunknown"