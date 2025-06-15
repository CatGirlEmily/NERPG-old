# global calc
scoreboard players add %stat_count time 1
execute as @a if score @s stat_count_reset matches 1.. run function main:player/player_stat_count
execute if score %stat_count time matches 20.. as @a run function main:player/player_stat_count

### crit
execute as @a unless score @s cd matches 99.. run scoreboard players set @s cd 100
execute as @a unless score @s cr matches 0.. run scoreboard players set @s cr 5

### mana
    # default
    execute as @a unless score @s mana matches 0.. run scoreboard players set @s mana 100
    execute as @a unless score @s max_mana matches 0.. run scoreboard players set @s max_mana 100

scoreboard players add %mana_regen time 1

execute as @a if score @s mana_usage matches 1.. run scoreboard players add @s mana_usage_time 1
execute as @a if score @s mana_usage_time matches 40.. run scoreboard players set @s mana_usage 0
execute as @a if score @s mana_usage_time matches 40.. run scoreboard players set @s mana_usage_time 0


execute if score %mana_regen time matches 20.. as @a if score @s mana < @s max_mana run scoreboard players operation @s max_mana_math = @s max_mana
execute if score %mana_regen time matches 20.. as @a if score @s mana < @s max_mana run scoreboard players operation @s max_mana_math /= 50 int
execute if score %mana_regen time matches 20.. as @a if score @s mana < @s max_mana run scoreboard players operation @s mana += @s max_mana_math
execute if score %mana_regen time matches 20.. as @a if score @s mana > @s max_mana run scoreboard players operation @s mana = @s max_mana
execute if score %mana_regen time matches 20.. run scoreboard players set %mana_regen time 0

### def
    # DEFault
    execute as @a unless score @s def matches 0.. run tag @s add def_none
    execute as @a[tag=def_none] if score @s def matches 1 run attribute @s minecraft:armor base set 0
    execute as @a[tag=def_none] if score @s def matches 0.. run tag @s remove def_none
    execute as @a[tag=def_none] unless score @s def matches 0.. run attribute @s minecraft:armor base set 0

### hp
execute as @a store result score @s max_hp run attribute @s minecraft:max_health get
effect give @a minecraft:saturation infinite 10 true

### actionbar
execute as @a run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"color":"green","score":{"name":"@s","objective":"def"}},{"color":"green","text":"❈ Defense    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute as @a if score @s combat_xp_new matches 1.. run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤    "},{"score":{"name":"","objective":""}},{"color":"dark_aqua","text":"+"},{"color":"dark_aqua","score":{"name":"@s","objective":"combat_xp_new"}},{"color":"dark_aqua","text":" Combat ("},{"color":"dark_aqua","italic":false,"score":{"name":"@s","objective":"combat_xp"}},{"color":"dark_aqua","text":"/"},{"color":"dark_aqua","score":{"name":"@s","objective":"combat_xp_need"}},{"color":"dark_aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute as @a if score @s mining_xp_new matches 1.. run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤    "},{"score":{"name":"","objective":""}},{"color":"dark_aqua","text":"+"},{"color":"dark_aqua","score":{"name":"@s","objective":"mining_xp_new"}},{"color":"dark_aqua","text":" Mining ("},{"color":"dark_aqua","italic":false,"score":{"name":"@s","objective":"mining_xp"}},{"color":"dark_aqua","text":"/"},{"color":"dark_aqua","score":{"name":"@s","objective":"mining_xp_need"}},{"color":"dark_aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]
execute as @a if score @s mana_usage matches 1.. if score @s mana_usage_reason matches 1 run title @s actionbar [{"color":"red","score":{"name":"@s","objective":"hp"}},{"color":"red","text":"/"},{"color":"red","score":{"name":"@s","objective":"max_hp"}},{"color":"red","text":"❤     "},{"score":{"name":"","objective":""}},{"color":"aqua","text":"-"},{"color":"aqua","score":{"name":"@s","objective":"mana_usage"}},{"color":"aqua","text":" Mana ("},{"color":"gold","italic":false,"text":"Speed Boost"},{"color":"aqua","text":")    "},{"color":"aqua","score":{"name":"@s","objective":"mana"}},{"color":"aqua","text":"/"},{"color":"aqua","score":{"name":"@s","objective":"max_mana"}},{"color":"aqua","text":"✎ Mana"}]



### items
execute as @a run function main:misc/inventory

# coords
execute as @a store result score @s x run data get entity @s Pos[0]
execute as @a store result score @s y run data get entity @s Pos[1]
execute as @a store result score @s z run data get entity @s Pos[2]

### skills
scoreboard players add @a combat 0
scoreboard players add @a mining 0
execute as @a run function main:skill/combat
execute as @a run function main:skill/mining

### teams
function main:misc/teams

### levels
scoreboard players add @a lvl 0

### sidebar
execute as @a run function main:player/sidebar

### damage indicator
execute as @a run function main:player/damage