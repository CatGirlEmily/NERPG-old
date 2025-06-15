execute if entity @a[tag=dev] run return fail

execute store result score %1_count team run team list 1
execute store result score %2_count team run team list 2
execute store result score %3_count team run team list 3
execute store result score %4_count team run team list 4
execute store result score %5_count team run team list 5
execute store result score %6_count team run team list 6
execute store result score %7_count team run team list 7
execute store result score %8_count team run team list 8
execute store result score %9_count team run team list 9
execute store result score %10_count team run team list 10
execute store result score %11_count team run team list 11
execute store result score %12_count team run team list 12
execute store result score %13_count team run team list 13
execute store result score %14_count team run team list 14
execute store result score %15_count team run team list 15
execute store result score %16_count team run team list 16
scoreboard players set %empty team 0

execute if score %empty team matches 0 if score %1_count team matches 0 run scoreboard players set %empty team 1
execute if score %empty team matches 0 if score %2_count team matches 0 run scoreboard players set %empty team 2
execute if score %empty team matches 0 if score %3_count team matches 0 run scoreboard players set %empty team 3
execute if score %empty team matches 0 if score %4_count team matches 0 run scoreboard players set %empty team 4
execute if score %empty team matches 0 if score %5_count team matches 0 run scoreboard players set %empty team 5
execute if score %empty team matches 0 if score %6_count team matches 0 run scoreboard players set %empty team 6
execute if score %empty team matches 0 if score %7_count team matches 0 run scoreboard players set %empty team 7
execute if score %empty team matches 0 if score %8_count team matches 0 run scoreboard players set %empty team 8
execute if score %empty team matches 0 if score %9_count team matches 0 run scoreboard players set %empty team 9
execute if score %empty team matches 0 if score %10_count team matches 0 run scoreboard players set %empty team 10
execute if score %empty team matches 0 if score %11_count team matches 0 run scoreboard players set %empty team 11
execute if score %empty team matches 0 if score %12_count team matches 0 run scoreboard players set %empty team 12
execute if score %empty team matches 0 if score %13_count team matches 0 run scoreboard players set %empty team 13
execute if score %empty team matches 0 if score %14_count team matches 0 run scoreboard players set %empty team 14
execute if score %empty team matches 0 if score %15_count team matches 0 run scoreboard players set %empty team 15
execute if score %empty team matches 0 if score %16_count team matches 0 run scoreboard players set %empty team 16

execute store result storage minecraft:team empty.number int 1 run scoreboard players get %empty team

execute if score %empty team matches 0 run team empty 1
execute if score %empty team matches 0 run team empty 2
execute if score %empty team matches 0 run team empty 3
execute if score %empty team matches 0 run team empty 4
execute if score %empty team matches 0 run team empty 5
execute if score %empty team matches 0 run team empty 6
execute if score %empty team matches 0 run team empty 7
execute if score %empty team matches 0 run team empty 8
execute if score %empty team matches 0 run team empty 9
execute if score %empty team matches 0 run team empty 10
execute if score %empty team matches 0 run team empty 11
execute if score %empty team matches 0 run team empty 12
execute if score %empty team matches 0 run team empty 13
execute if score %empty team matches 0 run team empty 14
execute if score %empty team matches 0 run team empty 15
execute if score %empty team matches 0 run team empty 16
#execute if score %empty team matches 0 run return fail

execute unless entity @a[team=] unless score %nowinki team matches 1 run return fail
execute as @a if entity @s[team=] run function main:misc/team_join with storage minecraft:team empty

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=1,limit=1] lvl
data modify storage minecraft:team level merge value {"number":1}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=2,limit=1] lvl
data modify storage minecraft:team level merge value {"number":2}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=3,limit=1] lvl
data modify storage minecraft:team level merge value {"number":3}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=4,limit=1] lvl
data modify storage minecraft:team level merge value {"number":4}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=5,limit=1] lvl
data modify storage minecraft:team level merge value {"number":5}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=6,limit=1] lvl
data modify storage minecraft:team level merge value {"number":6}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=7,limit=1] lvl
data modify storage minecraft:team level merge value {"number":7}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=8,limit=1] lvl
data modify storage minecraft:team level merge value {"number":8}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=9,limit=1] lvl
data modify storage minecraft:team level merge value {"number":9}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=10,limit=1] lvl
data modify storage minecraft:team level merge value {"number":10}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=11,limit=1] lvl
data modify storage minecraft:team level merge value {"number":11}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=12,limit=1] lvl
data modify storage minecraft:team level merge value {"number":12}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=13,limit=1] lvl
data modify storage minecraft:team level merge value {"number":13}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=14,limit=1] lvl
data modify storage minecraft:team level merge value {"number":14}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=15,limit=1] lvl
data modify storage minecraft:team level merge value {"number":15}
function main:misc/team_setlevel with storage minecraft:team level

execute store result storage minecraft:team level.it int 1 run scoreboard players get @a[team=16,limit=1] lvl
data modify storage minecraft:team level merge value {"number":16}
function main:misc/team_setlevel with storage minecraft:team level

