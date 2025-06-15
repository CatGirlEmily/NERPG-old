function main:player

## loops
function main:item/sword/_loop
function main:mob/_loop
function main:quest/_loop

execute store result score %daytime time run time query daytime
scoreboard players add @a quest_active 0
clear @a furnace_minecart