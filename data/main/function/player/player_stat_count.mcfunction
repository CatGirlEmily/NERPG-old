# crit
attribute @s minecraft:attack_damage modifier remove minecraft:crit
scoreboard players set @s cr 5
scoreboard players operation @s cr += @s combat

execute store result score %random cr run random value 1..100
execute if score @s cr >= %random cr if score @s cd matches 100..149 run attribute @s minecraft:attack_damage modifier add crit 1 add_multiplied_total
execute if score @s cr >= %random cr if score @s cd matches 150..199 run attribute @s minecraft:attack_damage modifier add crit 1.5 add_multiplied_total
execute if score @s cr >= %random cr if score @s cd matches 200..249 run attribute @s minecraft:attack_damage modifier add crit 2 add_multiplied_total
execute if score @s cr >= %random cr if score @s cd matches 250..299 run attribute @s minecraft:attack_damage modifier add crit 2.5 add_multiplied_total
execute if score @s cr >= %random cr if score @s cd matches 300..349 run attribute @s minecraft:attack_damage modifier add crit 3 add_multiplied_total
execute if score @s cr >= %random cr if score @s cd matches 350..399 run attribute @s minecraft:attack_damage modifier add crit 3.5 add_multiplied_total
execute if score @s cr >= %random cr if score @s cd matches 400..449 run attribute @s minecraft:attack_damage modifier add crit 4 add_multiplied_total
execute if score @s cr >= %random cr if score @s cd matches 450..499 run attribute @s minecraft:attack_damage modifier add crit 4.5 add_multiplied_total
execute if score @s cr >= %random cr if score @s cd matches 500..549 run attribute @s minecraft:attack_damage modifier add crit 5 add_multiplied_total
execute if score @s cr >= %random cr if score @s cd matches 550..599 run attribute @s minecraft:attack_damage modifier add crit 5.5 add_multiplied_total
execute if score @s cr >= %random cr if score @s cd matches 600.. run attribute @s minecraft:attack_damage modifier add crit 6 add_multiplied_total



#execute as @a run function main:player/player_stat_apply
scoreboard players set %stat_count time 0
scoreboard players set @a stat_count_reset 0