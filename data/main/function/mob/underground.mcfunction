scoreboard players add %mob_y_reset time 1

execute if score %mob_y_reset time matches 2000.. run scoreboard objectives remove mob_y
execute if score %mob_y_reset time matches 2000.. run scoreboard objectives add mob_y dummy
execute if score %mob_y_reset time matches 2000.. run scoreboard players set %mob_y_reset time 0
execute in minecraft:overworld as @e[type=!#cw_hp_disp:no_hp,type=!player] store result score @s mob_y run data get entity @s Pos[1]

# actual stuff
execute in minecraft:overworld as @e[scores={mob_y=37..},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run tag @s add high

execute in minecraft:overworld as @e[scores={mob_y=1..36},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run attribute @s minecraft:max_health modifier add underground 1 add_multiplied_total
execute in minecraft:overworld as @e[scores={mob_y=1..36},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run attribute @s minecraft:attack_damage modifier add underground 1 add_multiplied_total
execute in minecraft:overworld as @e[scores={mob_y=1..36},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run data modify entity @s Health set value 10000
execute in minecraft:overworld as @e[scores={mob_y=1..36},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run tag @s remove new
execute in minecraft:overworld as @e[scores={mob_y=1..36},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run tag @s add high

execute in minecraft:overworld as @e[scores={mob_y=-33..0},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] if entity @s[type=warden] run attribute @s max_absorption base set 476
execute in minecraft:overworld as @e[scores={mob_y=-33..0},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] if entity @s[type=warden] run data merge entity @s {AbsorptionAmount:476f}
execute in minecraft:overworld as @e[scores={mob_y=-33..0},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run attribute @s minecraft:max_health modifier add underground 2 add_multiplied_total
execute in minecraft:overworld as @e[scores={mob_y=-33..0},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run attribute @s minecraft:attack_damage modifier add underground 2 add_multiplied_total
execute in minecraft:overworld as @e[scores={mob_y=-33..0},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run data modify entity @s Health set value 10000
execute in minecraft:overworld as @e[scores={mob_y=-33..0},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run tag @s remove new
execute in minecraft:overworld as @e[scores={mob_y=-33..0},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run tag @s add mid

execute in minecraft:overworld as @e[scores={mob_y=-64..-32},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] if entity @s[type=warden] run attribute @s max_absorption base set 976
execute in minecraft:overworld as @e[scores={mob_y=-64..-32},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] if entity @s[type=warden] run data merge entity @s {AbsorptionAmount:976f}
execute in minecraft:overworld as @e[scores={mob_y=-64..-32},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run attribute @s minecraft:max_health modifier add underground 3 add_multiplied_total
execute in minecraft:overworld as @e[scores={mob_y=-64..-32},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run attribute @s minecraft:attack_damage modifier add underground 3 add_multiplied_total
execute in minecraft:overworld as @e[scores={mob_y=-64..-32},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run data modify entity @s Health set value 10000
execute in minecraft:overworld as @e[scores={mob_y=-64..-32},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run tag @s remove new
execute in minecraft:overworld as @e[scores={mob_y=-64..-32},tag=!high,tag=!mid,tag=!low,tag=!custom_mob] run tag @s add low