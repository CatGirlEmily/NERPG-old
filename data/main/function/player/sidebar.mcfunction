execute store result storage minecraft:team sidebar.number int 1 run scoreboard players get @s team
scoreboard players add %biome_check time 1

execute unless score %biome_check time matches 10.. run return fail

# 15
function main:player/sidebar/dimension with storage minecraft:team sidebar

# 14
data modify storage minecraft:team sidebar merge value {"blankname":"%blank1","pos":14}
function main:player/sidebar/blank with storage minecraft:team sidebar


# 14
data modify storage minecraft:team sidebar merge value {"blankname":"%blank2","pos":2}
function main:player/sidebar/blank with storage minecraft:team sidebar

# 13
execute store result storage minecraft:team sidebar.day int 1 run time query day
function main:player/sidebar/day with storage minecraft:team sidebar

# 12
function main:player/sidebar/hour with storage minecraft:team sidebar

# 11
execute at @s run function main:misc/biome
function main:player/sidebar/biome with storage minecraft:team sidebar

# 10
data modify storage minecraft:team sidebar merge value {"blankname":"%blank3","pos":10}
function main:player/sidebar/blank with storage minecraft:team sidebar

# 9
execute store result storage minecraft:team sidebar.level int 1 run scoreboard players get @s lvl
function main:player/sidebar/lvl with storage minecraft:team sidebar

# 8
execute store result storage minecraft:team sidebar.bits int 1 run scoreboard players get @s bits
function main:player/sidebar/bits with storage minecraft:team sidebar

# 7
execute store result storage minecraft:team sidebar.coins int 1 run scoreboard players get @s coins
function main:player/sidebar/purse with storage minecraft:team sidebar

# 6
data modify storage minecraft:team sidebar merge value {"blankname":"%blank4","pos":6}
function main:player/sidebar/blank with storage minecraft:team sidebar

# 5
function main:player/sidebar/objectiveslayer with storage minecraft:team sidebar

# 4
execute unless score @s hunter_quest matches 16.. store result storage minecraft:team sidebar.hunter_amount int 1 run scoreboard players get @s hunter_quest
function main:player/sidebar/whatobj with storage minecraft:team sidebar



# 2
data modify storage minecraft:team sidebar merge value {"blankname":"%blank5","pos":2}
function main:player/sidebar/blank with storage minecraft:team sidebar

# 1
function main:player/sidebar/mark with storage minecraft:team sidebar

execute if score %biome_check time matches 10.. run scoreboard players set %biome_check time 0