execute if score @s damage_dealt matches 1.. run scoreboard players operation @s damage_total = @s damage_dealt
execute if score @s damage_dealt matches 1.. run scoreboard players operation @s damage_total += @s damage_dealt_abs
execute if score @s damage_dealt matches 1.. run scoreboard players set @s damage_dealt 0

execute if score @s damage_dealt_abs matches 1.. run scoreboard players operation @s damage_total = @s damage_dealt
execute if score @s damage_dealt_abs matches 1.. run scoreboard players operation @s damage_total += @s damage_dealt_abs
execute if score @s damage_dealt_abs matches 1.. run scoreboard players set @s damage_dealt_abs 0

execute if score @s damage_total matches 1.. run scoreboard players operation @s damage_total /= 10 int
execute if score @s damage_total matches 1.. at @s store result storage minecraft:damage damage.amount int 1 run scoreboard players get @s damage_total
execute if score @s damage_total matches 1.. at @s at @e[distance=..20,nbt={HurtTime:10s},limit=1,sort=nearest] summon marker run function main:player/damage_spawn with storage minecraft:damage damage

execute as @e[tag=damage_splash] run scoreboard players add @s time 1
execute as @e[tag=damage_splash] if score @s time matches 60.. run tag @s add damage_kill

execute as @e[tag=damage_kill] run scoreboard players reset @s time
execute as @e[tag=damage_kill] run kill @s