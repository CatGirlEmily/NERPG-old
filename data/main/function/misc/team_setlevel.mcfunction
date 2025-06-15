$scoreboard players set %temp team $(it)
$execute if score %temp team matches ..9 run team modify $(number) prefix "§8[§f$(it)§8] §f"
$execute if score %temp team matches 10..19 run team modify $(number) prefix "§8[§e$(it)§8] §f"
$execute if score %temp team matches 20..29 run team modify $(number) prefix "§8[§a$(it)§8] §f"
$execute if score %temp team matches 30..39 run team modify $(number) prefix "§8[§2$(it)§8] §f"
$execute if score %temp team matches 40..49 run team modify $(number) prefix "§8[§b$(it)§8] §f"
$execute if score %temp team matches 50..59 run team modify $(number) prefix "§8[§3$(it)§8] §f"
$execute if score %temp team matches 60..69 run team modify $(number) prefix "§8[§9$(it)§8] §f"
$execute if score %temp team matches 70..79 run team modify $(number) prefix "§8[§d$(it)§8] §f"
$execute if score %temp team matches 80..89 run team modify $(number) prefix "§8[§5$(it)§8] §f"
$execute if score %temp team matches 90..99 run team modify $(number) prefix "§8[§6$(it)§8] §f"
$execute if score %temp team matches 100..109 run team modify $(number) prefix "§8[§c$(it)§8] §f"
$execute if score %temp team matches 110.. run team modify $(number) prefix "§8[§4$(it)§8] §f"

