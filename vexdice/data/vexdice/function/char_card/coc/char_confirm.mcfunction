scoreboard players set @s vex.char.LOCK 1
scoreboard players enable @s vex.char.coc.age.custom
scoreboard players enable @s vex.char.coc.sex.custom
tellraw @s [{text:"==========",color:dark_gray},{text:"请输入其他属性",color:gold},{text:"==========",color:dark_gray}]
tellraw @s [{text:"[设置年龄] ",click_event:{action:"suggest_command",command:"/trigger vex.char.coc.age.custom set " }},{score:{name:"@s",objective:"vex.char.coc.age"}},{text:"  数值范围: 15-90",color:"gray"}]
tellraw @s [{text:"[设置性别] ",click_event:{action:"suggest_command",command:"/trigger vex.char.coc.sex.custom set " }},{score:{name:"@s",objective:"vex.char.coc.sex"}},{text:"  数值范围: 男(0)/女(1)",color:"gray"}]
tellraw @s [{text:"==========",color:dark_gray},{text:"================",color:dark_gray},{text:"==========",color:dark_gray}]

tellraw @s [{text:"角色卡已锁定",color: "dark_green"}]
scoreboard players set @s vex.char.LOCK 10