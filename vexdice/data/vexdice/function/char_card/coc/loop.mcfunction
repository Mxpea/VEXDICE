#execute as @a if score @s vex.char.settings matches 10 run scoreboard players set @s vex.char.LOCK 0
execute as @a if score @s vex.char.settings matches 10 run function vexdice:char_card/coc/char_creat
execute as @a if score @s vex.char.settings matches 100 run function vexdice:char_card/coc/char_confirm
#execute as @a if score @s vex.char.LOCK matches 0 run function vexdice:char_card/coc/char_creat


execute unless score @s vex.char.coc.age.custom matches -123 unless score @s vex.char.coc.age.custom matches 15..90 run tellraw @s [{text:"年龄设置错误!请重新设置年龄. ",color:"red"}]
execute unless score @s vex.char.coc.age.custom matches -123 unless score @s vex.char.coc.age.custom matches 15..90 run function vexdice:char_card/coc/char_confirm
execute unless score @s vex.char.coc.age.custom matches -123 if score @s vex.char.coc.age.custom matches 15..90 run scoreboard players operation @s vex.char.coc.age = @s vex.char.coc.age.custom
execute unless score @s vex.char.coc.age.custom matches -123 if score @s vex.char.coc.age.custom matches 15..90 run function vexdice:char_card/coc/char_confirm

execute unless score @s vex.char.coc.sex.custom matches -123 unless score @s vex.char.coc.age.custom matches 0..1 run tellraw @s [{text:"性别设置错误!请重新设置性别. ",color:"red"}]
execute unless score @s vex.char.coc.sex.custom matches -123 unless score @s vex.char.coc.age.custom matches 0..1 run function vexdice:char_card/coc/char_confirm
execute unless score @s vex.char.coc.sex.custom matches -123 if score @s vex.char.coc.age.custom matches 0..1 run scoreboard players operation @s vex.char.coc.sex = @s vex.char.coc.sex.custom
execute unless score @s vex.char.coc.sex.custom matches -123 if score @s vex.char.coc.age.custom matches 0..1 run function vexdice:char_card/coc/char_confirm

scoreboard players set @a vex.char.coc.age.custom -123
scoreboard players set @a vex.char.coc.sex.custom -123









scoreboard players enable @a vex.char.LOCK
execute as @a if score @s vex.char.LOCK matches -1 run tellraw @s [{text:"角色已解锁,请重新设置属性",color:"green"},{text:" [锁定]",click_event:{action:"run_command",command:"/trigger vex.char.LOCK set -2"},color:"red"}]
execute as @a if score @s vex.char.LOCK matches -1 run scoreboard players set @s vex.char.LOCK 0
execute as @a if score @s vex.char.LOCK matches -2 run function vexdice:char_card/coc/char_creat
execute as @a if score @s vex.char.LOCK matches -2 run scoreboard players set @s vex.char.LOCK 114514
#scoreboard players set @a vex.char.LOCK 0
scoreboard players set @a vex.char.settings 0