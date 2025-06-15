# new xp
scoreboard players operation @s combat_xp_dupe = @s combat_xp
execute if score @s combat_xp_old < @s combat_xp run scoreboard players operation @s combat_xp_dupe -= @s combat_xp_old
execute if score @s combat_xp_old < @s combat_xp run scoreboard players operation @s combat_xp_new = @s combat_xp_dupe
execute if score @s combat_xp_old < @s combat_xp run scoreboard players set @s combat_xp_new_time 0
scoreboard players operation @s combat_xp_old = @s combat_xp

execute if score @s combat_xp_new matches 1.. run scoreboard players add @s combat_xp_new_time 1
execute if score @s combat_xp_new_time matches 40.. run scoreboard players set @s combat_xp_new 0
execute if score @s combat_xp_new_time matches 40.. run scoreboard players set @s combat_xp_new_time 0

# combat xp left
execute if score @s combat matches 0 run scoreboard players set @s combat_xp_need 50
execute if score @s combat matches 1 run scoreboard players set @s combat_xp_need 125
execute if score @s combat matches 2 run scoreboard players set @s combat_xp_need 200
execute if score @s combat matches 3 run scoreboard players set @s combat_xp_need 300
execute if score @s combat matches 4 run scoreboard players set @s combat_xp_need 500
execute if score @s combat matches 5 run scoreboard players set @s combat_xp_need 750
execute if score @s combat matches 6 run scoreboard players set @s combat_xp_need 1000
execute if score @s combat matches 7 run scoreboard players set @s combat_xp_need 1500
execute if score @s combat matches 8 run scoreboard players set @s combat_xp_need 2000
execute if score @s combat matches 9 run scoreboard players set @s combat_xp_need 3500
execute if score @s combat matches 10 run scoreboard players set @s combat_xp_need 5000
execute if score @s combat matches 11 run scoreboard players set @s combat_xp_need 7500
execute if score @s combat matches 12 run scoreboard players set @s combat_xp_need 10000
execute if score @s combat matches 13 run scoreboard players set @s combat_xp_need 15000
execute if score @s combat matches 14 run scoreboard players set @s combat_xp_need 20000
execute if score @s combat matches 15 run scoreboard players set @s combat_xp_need 30000
execute if score @s combat matches 16 run scoreboard players set @s combat_xp_need 50000
execute if score @s combat matches 17 run scoreboard players set @s combat_xp_need 75000
execute if score @s combat matches 18 run scoreboard players set @s combat_xp_need 100000
execute if score @s combat matches 19 run scoreboard players set @s combat_xp_need 200000
execute if score @s combat matches 20 run scoreboard players set @s combat_xp_need 300000
execute if score @s combat matches 21 run scoreboard players set @s combat_xp_need 400000
execute if score @s combat matches 22 run scoreboard players set @s combat_xp_need 500000
execute if score @s combat matches 23 run scoreboard players set @s combat_xp_need 600000
execute if score @s combat matches 24 run scoreboard players set @s combat_xp_need 700000
execute if score @s combat matches 25 run scoreboard players set @s combat_xp_need 800000

# combat lvlup
execute if score @s combat_xp >= @s combat_xp_need run tag @s add combat_lvlup

execute if entity @s[tag=combat_lvlup] run function main:misc/combat_levelup_message
execute if entity @s[tag=combat_lvlup] run scoreboard players set @s combat_lvl_sound 0
execute if entity @s[tag=combat_lvlup] run scoreboard players add @s combat 1
execute if entity @s[tag=combat_lvlup] run scoreboard players operation @s combat_xp -= @s combat_xp_need
execute if entity @s[tag=combat_lvlup] run attribute @s minecraft:attack_damage modifier remove combatskill
execute if entity @s[tag=combat_lvlup] run tag @s remove combat_lvlup

execute if score @s combat_lvl_sound matches 1 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 0.793701
execute if score @s combat_lvl_sound matches 3 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score @s combat_lvl_sound matches 5 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1.189207
execute if score @s combat_lvl_sound matches 7 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1.587401

# combat strength
execute if score @s combat matches 1 run attribute @s minecraft:attack_damage modifier add combatskill 0.5 add_value
execute if score @s combat matches 2 run attribute @s minecraft:attack_damage modifier add combatskill 1 add_value
execute if score @s combat matches 3 run attribute @s minecraft:attack_damage modifier add combatskill 1.5 add_value
execute if score @s combat matches 4 run attribute @s minecraft:attack_damage modifier add combatskill 2 add_value
execute if score @s combat matches 5 run attribute @s minecraft:attack_damage modifier add combatskill 2.5 add_value
execute if score @s combat matches 6 run attribute @s minecraft:attack_damage modifier add combatskill 3 add_value
execute if score @s combat matches 7 run attribute @s minecraft:attack_damage modifier add combatskill 3.5 add_value
execute if score @s combat matches 8 run attribute @s minecraft:attack_damage modifier add combatskill 4 add_value
execute if score @s combat matches 9 run attribute @s minecraft:attack_damage modifier add combatskill 4.5 add_value
execute if score @s combat matches 10 run attribute @s minecraft:attack_damage modifier add combatskill 5 add_value
execute if score @s combat matches 11 run attribute @s minecraft:attack_damage modifier add combatskill 5.5 add_value
execute if score @s combat matches 12 run attribute @s minecraft:attack_damage modifier add combatskill 6 add_value
execute if score @s combat matches 13 run attribute @s minecraft:attack_damage modifier add combatskill 6.5 add_value
execute if score @s combat matches 14 run attribute @s minecraft:attack_damage modifier add combatskill 7 add_value
execute if score @s combat matches 15 run attribute @s minecraft:attack_damage modifier add combatskill 7.5 add_value
execute if score @s combat matches 16 run attribute @s minecraft:attack_damage modifier add combatskill 8 add_value
execute if score @s combat matches 17 run attribute @s minecraft:attack_damage modifier add combatskill 8.5 add_value
execute if score @s combat matches 18 run attribute @s minecraft:attack_damage modifier add combatskill 9 add_value
execute if score @s combat matches 19 run attribute @s minecraft:attack_damage modifier add combatskill 9.5 add_value
execute if score @s combat matches 20 run attribute @s minecraft:attack_damage modifier add combatskill 10 add_value
execute if score @s combat matches 21 run attribute @s minecraft:attack_damage modifier add combatskill 10.5 add_value
execute if score @s combat matches 22 run attribute @s minecraft:attack_damage modifier add combatskill 11 add_value
execute if score @s combat matches 23 run attribute @s minecraft:attack_damage modifier add combatskill 11.5 add_value
execute if score @s combat matches 24 run attribute @s minecraft:attack_damage modifier add combatskill 12 add_value
execute if score @s combat matches 25 run attribute @s minecraft:attack_damage modifier add combatskill 12.5 add_value
