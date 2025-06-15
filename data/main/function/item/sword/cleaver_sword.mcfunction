execute unless items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data={cleaver_sword:true}] run scoreboard players set @s cleaver_damage 0
execute unless items entity @s weapon.mainhand minecraft:golden_sword[minecraft:custom_data={cleaver_sword:true}] run scoreboard players set @s cleaver_used 0

execute unless score @s cleaver_damage matches 1.. unless score @s cleaver_used matches 1.. run return fail
execute if score @s cleaver_damage matches 1.. if score @s cleaver_used matches 1.. run scoreboard players operation @s cleaver_damage /= 100 int
execute store result storage minecraft:cleaver dmg.amount int 1 run scoreboard players get @s cleaver_damage
execute if data storage minecraft:cleaver dmg{"amount":0} run data modify storage minecraft:cleaver dmg set value {"amount":1}
function main:item/sword/cleaver_hit with storage minecraft:cleaver dmg
scoreboard players set @s cleaver_damage 0
scoreboard players set @s cleaver_used 0