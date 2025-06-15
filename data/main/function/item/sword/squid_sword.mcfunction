advancement revoke @s only main:ability/squid_sword

execute if score @s squid_used matches ..10 run return fail
scoreboard players set @s squid_used 0

execute unless score @s squid_cooldown matches 100.. run tellraw @s {"text":"This item is on cooldown!","color":"red"}
execute unless score @s squid_cooldown matches 100.. run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless score @s squid_cooldown matches 100.. run return fail

execute store result score %squid_vel random run random value 1..28

execute if score %squid_vel random matches 1 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[1.0,0.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 2 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,1.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 3 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,0.0,1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 4 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[1.0,1.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 5 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[1.0,0.0,1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 6 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,1.0,1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 7 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[1.0,1.0,1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 8 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[-1.0,0.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 9 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,1.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 10 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,0.0,-1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 11 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[-1.0,1.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 12 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[-1.0,0.0,-1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 13 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,1.0,-1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 14 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[-1.0,1.0,-1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 15 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[-1.0,0.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 16 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,1.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 17 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,0.0,1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 18 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[-1.0,1.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 19 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[-1.0,0.0,1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 20 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,1.0,1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 21 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[-1.0,1.0,1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 22 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[1.0,0.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 23 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,1.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 24 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,0.0,-1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 25 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[1.0,1.0,0.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 26 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[1.0,0.0,-1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 27 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[0.0,1.0,-1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}
execute if score %squid_vel random matches 28 if score @s squid_cooldown matches 100.. at @s run summon squid ~ ~0.5 ~ {Motion:[1.0,1.0,-1.0],Tags:["the_squid"],DeathLootTable:"minecraft:empty",attributes:[{id:"minecraft:safe_fall_distance",base:10}]}


execute if score @s squid_cooldown matches 100.. run playsound minecraft:entity.squid.squirt master @s ~ ~ ~ 0.4000000059604645
execute if score @s squid_cooldown matches 100.. run scoreboard players set @s squid_cooldown 0

