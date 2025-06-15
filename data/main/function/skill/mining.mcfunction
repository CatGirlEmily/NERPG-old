# new xp
scoreboard players operation @s mining_xp_dupe = @s mining_xp
execute if score @s mining_xp_old < @s mining_xp run scoreboard players operation @s mining_xp_dupe -= @s mining_xp_old
execute if score @s mining_xp_old < @s mining_xp run scoreboard players operation @s mining_xp_new = @s mining_xp_dupe
execute if score @s mining_xp_old < @s mining_xp run scoreboard players set @s mining_xp_new_time 0
scoreboard players operation @s mining_xp_old = @s mining_xp

execute if score @s mining_xp_new matches 1.. run scoreboard players add @s mining_xp_new_time 1
execute if score @s mining_xp_new_time matches 40.. run scoreboard players set @s mining_xp_new 0
execute if score @s mining_xp_new_time matches 40.. run scoreboard players set @s mining_xp_new_time 0

# xp left
execute if score @s mining matches 0 run scoreboard players set @s mining_xp_need 50
execute if score @s mining matches 1 run scoreboard players set @s mining_xp_need 125
execute if score @s mining matches 2 run scoreboard players set @s mining_xp_need 200
execute if score @s mining matches 3 run scoreboard players set @s mining_xp_need 300
execute if score @s mining matches 4 run scoreboard players set @s mining_xp_need 500
execute if score @s mining matches 5 run scoreboard players set @s mining_xp_need 750
execute if score @s mining matches 6 run scoreboard players set @s mining_xp_need 1000
execute if score @s mining matches 7 run scoreboard players set @s mining_xp_need 1500
execute if score @s mining matches 8 run scoreboard players set @s mining_xp_need 2000
execute if score @s mining matches 9 run scoreboard players set @s mining_xp_need 3500
execute if score @s mining matches 10 run scoreboard players set @s mining_xp_need 5000
execute if score @s mining matches 11 run scoreboard players set @s mining_xp_need 7500
execute if score @s mining matches 12 run scoreboard players set @s mining_xp_need 10000
execute if score @s mining matches 13 run scoreboard players set @s mining_xp_need 15000
execute if score @s mining matches 14 run scoreboard players set @s mining_xp_need 20000
execute if score @s mining matches 15 run scoreboard players set @s mining_xp_need 30000
execute if score @s mining matches 16 run scoreboard players set @s mining_xp_need 50000
execute if score @s mining matches 17 run scoreboard players set @s mining_xp_need 75000
execute if score @s mining matches 18 run scoreboard players set @s mining_xp_need 100000
execute if score @s mining matches 19 run scoreboard players set @s mining_xp_need 200000
execute if score @s mining matches 20 run scoreboard players set @s mining_xp_need 300000
execute if score @s mining matches 21 run scoreboard players set @s mining_xp_need 400000
execute if score @s mining matches 22 run scoreboard players set @s mining_xp_need 500000
execute if score @s mining matches 23 run scoreboard players set @s mining_xp_need 600000
execute if score @s mining matches 24 run scoreboard players set @s mining_xp_need 700000
execute if score @s mining matches 25 run scoreboard players set @s mining_xp_need 800000

# mining lvlup
execute if score @s mining_xp >= @s mining_xp_need run tag @s add mining_lvlup

execute if entity @s[tag=mining_lvlup] run function main:misc/mining_levelup_message
execute if entity @s[tag=mining_lvlup] run scoreboard players set @s mining_lvl_sound 0
execute if entity @s[tag=mining_lvlup] run scoreboard players add @s mining 1
execute if entity @s[tag=mining_lvlup] run scoreboard players operation @s mining_xp -= @s mining_xp_need
execute if entity @s[tag=mining_lvlup] run tag @s remove mining_lvlup

execute if score @s mining_lvl_sound matches 1 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 0.793701
execute if score @s mining_lvl_sound matches 3 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1
execute if score @s mining_lvl_sound matches 5 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1.189207
execute if score @s mining_lvl_sound matches 7 at @s run playsound minecraft:block.note_block.harp master @p ~ ~ ~ 1 1.587401


# respective levels
scoreboard objectives add mined.stone minecraft.mined:minecraft.stone
scoreboard objectives add mined.cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add mined.dirt minecraft.mined:minecraft.dirt
scoreboard objectives add mined.grass_block minecraft.mined:minecraft.grass_block
scoreboard objectives add mined.sand minecraft.mined:minecraft.sand
scoreboard objectives add mined.red_sand minecraft.mined:minecraft.red_sand
scoreboard objectives add mined.ice minecraft.mined:minecraft.ice
scoreboard objectives add mined.blue_ice minecraft.mined:minecraft.blue_ice
scoreboard objectives add mined.snow_block minecraft.mined:minecraft.snow_block
scoreboard objectives add mined.deepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add mined.netherrack minecraft.mined:minecraft.netherrack
scoreboard objectives add mined.obsidian minecraft.mined:minecraft.obsidian
scoreboard objectives add mined.blackstone minecraft.mined:minecraft.blackstone
scoreboard objectives add mined.basalt minecraft.mined:minecraft.basalt
scoreboard objectives add mined.coal_ore minecraft.mined:minecraft.coal_ore
scoreboard objectives add mined.deepslate_coal_ore minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add mined.iron_ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add mined.deepslate_iron_ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add mined.emerald_ore minecraft.mined:minecraft.emerald_ore
scoreboard objectives add mined.deepslate_emerald_ore minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add mined.diamond_ore minecraft.mined:minecraft.diamond_ore
scoreboard objectives add mined.deepslate_diamond_ore minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add mined.redstone_ore minecraft.mined:minecraft.redstone_ore
scoreboard objectives add mined.deepslate_redstone_ore minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add mined.lapis_ore minecraft.mined:minecraft.lapis_ore
scoreboard objectives add mined.deepslate_lapis_ore minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add mined.nether_gold_ore minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add mined.nether_quart_ore minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add mined.ancient_debris minecraft.mined:minecraft.ancient_debris
scoreboard objectives add mined.clay minecraft.mined:minecraft.clay


# Zwiększenie XP za wykopanie każdego bloku na podstawie rzadkości i prędkości wykopywania
execute if score @s mined.stone matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s mined.stone matches 1.. run scoreboard players set @s mined.stone 0

execute if score @s mined.cobblestone matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s mined.cobblestone matches 1.. run scoreboard players set @s mined.cobblestone 0

execute if score @s mined.dirt matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s mined.dirt matches 1.. run scoreboard players set @s mined.dirt 0

execute if score @s mined.grass_block matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s mined.grass_block matches 1.. run scoreboard players set @s mined.grass_block 0

execute if score @s mined.sand matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s mined.sand matches 1.. run scoreboard players set @s mined.sand 0

execute if score @s mined.red_sand matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s mined.red_sand matches 1.. run scoreboard players set @s mined.red_sand 0

execute if score @s mined.ice matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s mined.ice matches 1.. run scoreboard players set @s mined.ice 0

execute if score @s mined.blue_ice matches 1.. run scoreboard players add @s mining_xp 5
execute if score @s mined.blue_ice matches 1.. run scoreboard players set @s mined.blue_ice 0

execute if score @s mined.snow_block matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s mined.snow_block matches 1.. run scoreboard players set @s mined.snow_block 0

execute if score @s mined.deepslate matches 1.. run scoreboard players add @s mining_xp 3
execute if score @s mined.deepslate matches 1.. run scoreboard players set @s mined.deepslate 0

execute if score @s mined.netherrack matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s mined.netherrack matches 1.. run scoreboard players set @s mined.netherrack 0

execute if score @s mined.obsidian matches 1.. run scoreboard players add @s mining_xp 7
execute if score @s mined.obsidian matches 1.. run scoreboard players set @s mined.obsidian 0

execute if score @s mined.blackstone matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s mined.blackstone matches 1.. run scoreboard players set @s mined.blackstone 0

execute if score @s mined.basalt matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s mined.basalt matches 1.. run scoreboard players set @s mined.basalt 0

execute if score @s mined.coal_ore matches 1.. run scoreboard players add @s mining_xp 4
execute if score @s mined.coal_ore matches 1.. run scoreboard players set @s mined.coal_ore 0

execute if score @s mined.deepslate_coal_ore matches 1.. run scoreboard players add @s mining_xp 8
execute if score @s mined.deepslate_coal_ore matches 1.. run scoreboard players set @s mined.deepslate_coal_ore 0

execute if score @s mined.iron_ore matches 1.. run scoreboard players add @s mining_xp 6
execute if score @s mined.iron_ore matches 1.. run scoreboard players set @s mined.iron_ore 0

execute if score @s mined.deepslate_iron_ore matches 1.. run scoreboard players add @s mining_xp 10
execute if score @s mined.deepslate_iron_ore matches 1.. run scoreboard players set @s mined.deepslate_iron_ore 0

execute if score @s mined.emerald_ore matches 1.. run scoreboard players add @s mining_xp 20
execute if score @s mined.emerald_ore matches 1.. run scoreboard players set @s mined.emerald_ore 0

execute if score @s mined.deepslate_emerald_ore matches 1.. run scoreboard players add @s mining_xp 24
execute if score @s mined.deepslate_emerald_ore matches 1.. run scoreboard players set @s mined.deepslate_emerald_ore 0

execute if score @s mined.diamond_ore matches 1.. run scoreboard players add @s mining_xp 20
execute if score @s mined.diamond_ore matches 1.. run scoreboard players set @s mined.diamond_ore 0

execute if score @s mined.deepslate_diamond_ore matches 1.. run scoreboard players add @s mining_xp 24
execute if score @s mined.deepslate_diamond_ore matches 1.. run scoreboard players set @s mined.deepslate_diamond_ore 0

execute if score @s mined.redstone_ore matches 1.. run scoreboard players add @s mining_xp 6
execute if score @s mined.redstone_ore matches 1.. run scoreboard players set @s mined.redstone_ore 0

execute if score @s mined.deepslate_redstone_ore matches 1.. run scoreboard players add @s mining_xp 10
execute if score @s mined.deepslate_redstone_ore matches 1.. run scoreboard players set @s mined.deepslate_redstone_ore 0

execute if score @s mined.lapis_ore matches 1.. run scoreboard players add @s mining_xp 8
execute if score @s mined.lapis_ore matches 1.. run scoreboard players set @s mined.lapis_ore 0

execute if score @s mined.deepslate_lapis_ore matches 1.. run scoreboard players add @s mining_xp 12
execute if score @s mined.deepslate_lapis_ore matches 1.. run scoreboard players set @s mined.deepslate_lapis_ore 0

execute if score @s mined.nether_gold_ore matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s mined.nether_gold_ore matches 1.. run scoreboard players set @s mined.nether_gold_ore 0

execute if score @s mined.nether_quart_ore matches 1.. run scoreboard players add @s mining_xp 2
execute if score @s mined.nether_quart_ore matches 1.. run scoreboard players set @s mined.nether_quart_ore 0

execute if score @s mined.ancient_debris matches 1.. run scoreboard players add @s mining_xp 10
execute if score @s mined.ancient_debris matches 1.. run scoreboard players set @s mined.ancient_debris 0

execute if score @s mined.clay matches 1.. run scoreboard players add @s mining_xp 1
execute if score @s mined.clay matches 1.. run scoreboard players set @s mined.clay 0
