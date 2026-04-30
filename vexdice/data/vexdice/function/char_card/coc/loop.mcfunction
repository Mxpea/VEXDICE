execute as @a if score @s vex.char.settings matches 10 run function vexdice:char_card/coc/char_creat
execute as @a if score @s vex.char.settings matches 100 run say 1

scoreboard players set @a vex.char.settings 0