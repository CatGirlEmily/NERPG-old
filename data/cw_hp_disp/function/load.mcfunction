scoreboard objectives add cw_hp_disp dummy
scoreboard objectives add cw_hp_max_disp dummy
scoreboard players set #10 cw_hp_disp 10
scoreboard players add .strict cw_hp_disp 0

execute unless entity @e[type=text_display,tag=cw_hp_disp] run forceload add ~ ~
execute unless entity @e[type=text_display,tag=cw_hp_disp] run summon text_display ~ -65 ~ {Tags:["cw_hp_disp"]}