advancement revoke @s only main:ability/rogue_sword

execute if score @s rogue_used matches ..10 run return fail
scoreboard players set @s rogue_used 0

execute unless score @s mana matches 50.. run tellraw @s {"text":"Not Enough Mana!","color":"red"}
execute unless score @s mana matches 50.. run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless score @s mana matches 50.. run return fail

execute if score @s mana matches 50.. run attribute @s minecraft:movement_speed modifier add rogue_sword 1 add_multiplied_base
execute if score @s mana matches 50.. run playsound minecraft:block.lava.pop master @s ~ ~ ~ 0.4000000059604645
execute if score @s mana matches 50.. run scoreboard players set @s rogue_duration 0
execute if score @s mana matches 50.. run scoreboard players set @s mana_usage 50
execute if score @s mana matches 50.. run scoreboard players set @s mana_usage_reason 1
execute if score @s mana matches 50.. run scoreboard players remove @s mana 50