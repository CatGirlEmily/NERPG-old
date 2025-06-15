$scoreboard players set %biome sidebar_$(number) 11
$execute if score @s y matches ..32 run scoreboard players display name %biome sidebar_$(number) "§7 ⏣ §c$(biome)"
$execute if score @s y matches 33.. run scoreboard players display name %biome sidebar_$(number) "§7 ⏣ §a$(biome)"