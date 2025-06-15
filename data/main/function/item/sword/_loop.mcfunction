# scoreboards
scoreboard players add @a rogue_used 1
scoreboard players add @a rogue_duration 1

# items working
execute as @a if score @s rogue_duration matches 600.. run attribute @s minecraft:movement_speed modifier remove rogue_sword
execute as @a run function main:item/sword/fancy_sword
execute as @a run function main:item/sword/cleaver_sword
execute as @a run function main:item/sword/squire_sword
execute as @a run function main:item/sword/undead_sword
execute as @a run function main:item/sword/spider_sword
execute as @a run function main:item/sword/end_sword
execute as @a run function main:item/sword/prismarine_blade
execute as @a run function main:item/sword/mercenary_axe