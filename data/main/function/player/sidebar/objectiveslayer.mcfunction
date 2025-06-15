$scoreboard players set %objslayer sidebar_$(number) 5
$scoreboard players display name %objslayer sidebar_$(number) "§fObjective"
$execute if score @s slayer_active matches 1.. run scoreboard players display name %objslayer sidebar_$(number) "§fSlayer Quest"