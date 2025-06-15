tag @e[type=!marker,limit=1,sort=nearest] add damagesplashbeloved
execute as @s at @e[tag=damagesplashbeloved] run spreadplayers ~ ~ 0 1 false @s
data modify entity @s Pos[1] set from entity @e[tag=damagesplashbeloved,limit=1] Pos[1]
execute at @s run tp ~ ~1 ~
execute store result score %move_y random run random value -60..60
execute store result storage minecraft:damage damage.move int 1 run scoreboard players get %move_y random
execute at @s run function main:player/damage_move_y with storage minecraft:damage damage

execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["damage_splash","this"],CustomNameVisible:1b}
$execute if score @p[scores={damage_total=1..}] cr >= %random cr run data merge entity @e[tag=this,limit=1] {CustomName:'[{"color":"white","text":"✧"},{"color":"gold","text":"$(amount)"},{"color":"white","text":"✧"}]'}
$execute if score @p[scores={damage_total=1..}] cr < %random cr run data merge entity @e[tag=this,limit=1] {CustomName:'[{"color":"yellow","text":"$(amount)"}]'}


scoreboard players set @a damage_total 0
tag @e remove damagesplashbeloved
tag @e remove this
kill @s