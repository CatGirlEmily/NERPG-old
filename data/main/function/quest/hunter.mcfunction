execute as @e[tag=hunter] if data entity @s interaction on target unless score @s hunter_quest matches 0.. run scoreboard players set @s hunter_status 1
execute as @e[tag=hunter] if data entity @s interaction on target if score @s hunter_status matches 1 run scoreboard players add @s hunter_quest 0
execute as @e[tag=hunter] if data entity @s interaction on target unless score @s hunter_quest matches 15.. if score @s hunter_status matches 1..2 run tellraw @s {"text":"[Hunter] zabij 15 krów to cos ci dam (hunter sword)"}
execute as @e[tag=hunter] if data entity @s interaction on target if score @s hunter_status matches 1 run scoreboard players set @s quest_active 1
execute as @e[tag=hunter] if data entity @s interaction on target if score @s hunter_status matches 1 run scoreboard players set @s hunter_status 2

execute as @e[tag=hunter] if data entity @s interaction on target if score @s hunter_quest matches 15.. if score @s hunter_status matches 2 run scoreboard players set @s hunter_status 3

execute as @e[tag=hunter] if data entity @s interaction on target if score @s hunter_status matches 3 run function main:item/sword/give/hunter_knife
execute as @e[tag=hunter] if data entity @s interaction on target if score @s hunter_status matches 3 run scoreboard players set @s quest_active 0
execute as @e[tag=hunter] if data entity @s interaction on target if score @s hunter_status matches 3 run tellraw @s {"text":"[Hunter] dobra robota ig, trzymaj miecz"}
execute as @e[tag=hunter] if data entity @s interaction on target if score @s hunter_status matches 3 run scoreboard players set @s hunter_status 4

execute as @e[tag=hunter] if data entity @s interaction on target if score @s hunter_status matches 4 run tellraw @s {"text":"[Hunter] Już dałem ci miecz! więcej nie mam (dla cb)"}

execute as @e[tag=hunter] run data remove entity @s interaction
execute as @e[tag=hunter] at @s unless entity @e[type=villager,tag=hunter_npc] run kill @s
execute as @e[tag=hunter_npc] at @s unless entity @e[tag=hunter,distance=..2] run summon minecraft:interaction ~ ~ ~ {width:0.7f,height:2.0f,response:true,Tags:["hunter"]}