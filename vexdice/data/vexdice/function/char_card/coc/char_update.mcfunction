#check
execute unless score @s vex.char.coc.age matches 15..90 run tellraw @s [{text:"年龄设置错误!请重新设置年龄. ",color:"red"}]
execute unless score @s vex.char.coc.age matches 15..90 run function vexdice:char_card/coc/char_confirm
execute unless score @s vex.char.coc.age matches 15..90 run return fail
execute unless score @s vex.char.coc.sex matches 0..1 run tellraw @s [{text:"性别设置错误!请重新设置性别. ",color:"red"}]
execute unless score @s vex.char.coc.sex matches 0..1 run function vexdice:char_card/coc/char_confirm
execute unless score @s vex.char.coc.sex matches 0..1 run return fail

#operate