#coc7th

#LOCK
scoreboard players enable @s vex.char.LOCK
execute unless score @s vex.char.LOCK matches 0 run tellraw @s [{text:"角色已锁定,如需修改请  ",color:"red"},{text:"[解锁] ",color:"green",click_event:{action:"run_command",command:"/trigger vex.char.LOCK set -1"}}]
execute unless score @s vex.char.LOCK matches 0 run return fail

#temp
#vex.core.times.d
#vex.core.sides
scoreboard players enable @s vex.char.settings
tellraw @a [{text:"玩家 "},{selector: "@s"},{"text":" 的角色卡属性如下：",color:"green"}]
tellraw @a {text:"===============================",color:"gray"}

#3d6 x5
scoreboard players set temp vex.core.times.d 3
scoreboard players set temp vex.core.sides 6

function vexdice:core/roll_internal
scoreboard players operation output vex.core.result *= C5 vex.math.constant
scoreboard players operation @s vex.char.coc.STR = output vex.core.result
tellraw @a [{text:"· 力量(STR): ",color:"gold"},{score:{name:"@s",objective:"vex.char.coc.STR"},color:"yellow"},{text:" "},{source:storage,storage:"vexdice:core",nbt:"ran_output",color:gray}]
function vexdice:core/roll_internal
scoreboard players operation output vex.core.result *= C5 vex.math.constant
scoreboard players operation @s vex.char.coc.CON = output vex.core.result
tellraw @a [{text:"· 体质(CON): ",color:"gold"},{score:{name:"@s",objective:"vex.char.coc.CON"},color:"yellow"},{text:" "},{source:storage,storage:"vexdice:core",nbt:"ran_output",color:gray}]
function vexdice:core/roll_internal
scoreboard players operation output vex.core.result *= C5 vex.math.constant
scoreboard players operation @s vex.char.coc.DEX = output vex.core.result
tellraw @a [{text:"· 敏捷(DEX): ",color:"gold"},{score:{name:"@s",objective:"vex.char.coc.DEX"},color:"yellow"},{text:" "},{source:storage,storage:"vexdice:core",nbt:"ran_output",color:gray}]
function vexdice:core/roll_internal
scoreboard players operation output vex.core.result *= C5 vex.math.constant
scoreboard players operation @s vex.char.coc.APP = output vex.core.result
tellraw @a [{text:"· 外貌(APP): ",color:"gold"},{score:{name:"@s",objective:"vex.char.coc.APP"},color:"yellow"},{text:" "},{source:storage,storage:"vexdice:core",nbt:"ran_output",color:gray}]
function vexdice:core/roll_internal
scoreboard players operation output vex.core.result *= C5 vex.math.constant
scoreboard players operation @s vex.char.coc.POW = output vex.core.result
tellraw @a [{text:"· 意志(POW): ",color:"gold"},{score:{name:"@s",objective:"vex.char.coc.POW"},color:"yellow"},{text:" "},{source:storage,storage:"vexdice:core",nbt:"ran_output",color:gray}]

#2d6+6 x5
scoreboard players set temp vex.core.times.d 2

function vexdice:core/roll_internal
scoreboard players add output vex.core.result 6
scoreboard players operation output vex.core.result *= C5 vex.math.constant
scoreboard players operation @s vex.char.coc.SIZ = output vex.core.result
tellraw @a [{text:"· 体型(SIZ): ",color:"gold"},{score:{name:"@s",objective:"vex.char.coc.SIZ"},color:"yellow"},{text:" "},{source:storage,storage:"vexdice:core",nbt:"ran_output",color:gray}]
function vexdice:core/roll_internal
scoreboard players add output vex.core.result 6
scoreboard players operation output vex.core.result *= C5 vex.math.constant
scoreboard players operation @s vex.char.coc.INT = output vex.core.result
tellraw @a [{text:"· 智力(INT): ",color:"gold"},{score:{name:"@s",objective:"vex.char.coc.INT"},color:"yellow"},{text:" "},{source:storage,storage:"vexdice:core",nbt:"ran_output",color:gray}]
function vexdice:core/roll_internal
scoreboard players add output vex.core.result 6
scoreboard players operation output vex.core.result *= C5 vex.math.constant
scoreboard players operation @s vex.char.coc.EDU = output vex.core.result
tellraw @a [{text:"· 教育(EDU): ",color:"gold"},{score:{name:"@s",objective:"vex.char.coc.EDU"},color:"yellow"},{text:" "},{source:storage,storage:"vexdice:core",nbt:"ran_output",color:gray}]

scoreboard players set sum vex.char.temp 0
scoreboard players operation sum vex.char.temp += @s vex.char.coc.STR
scoreboard players operation sum vex.char.temp += @s vex.char.coc.CON
scoreboard players operation sum vex.char.temp += @s vex.char.coc.SIZ
scoreboard players operation sum vex.char.temp += @s vex.char.coc.DEX
scoreboard players operation sum vex.char.temp += @s vex.char.coc.APP
scoreboard players operation sum vex.char.temp += @s vex.char.coc.INT
scoreboard players operation sum vex.char.temp += @s vex.char.coc.POW
scoreboard players operation sum vex.char.temp += @s vex.char.coc.EDU

tellraw @a [{text:"· 总和: ",color:"gold"},{score:{name:"sum",objective:"vex.char.temp"},color:"yellow"},{text:"/720",color:gray}]

scoreboard players set temp vex.core.times.d 3
function vexdice:core/roll_internal
scoreboard players operation output vex.core.result *= C5 vex.math.constant
scoreboard players operation @s vex.char.coc.LUCK = output vex.core.result
tellraw @a [{text:"· 幸运(LUCK): ",color:"aqua"},{score:{name:"@s",objective:"vex.char.coc.LUCK"},color:"yellow"},{text:" "},{source:storage,storage:"vexdice:core",nbt:"ran_output",color:gray}]

tellraw @a {text:"===============================",color:"gray"}
tellraw @s [{text:"[继续创建]  ",click_event:{action:"run_command",command:"/trigger vex.char.settings set 100"},color:"green",bold:true},\
            {text:"[重新生成]  ",click_event:{action:"run_command",command:"/trigger vex.char.settings set 10"},color:"yellow",bold:true}]

#reset
scoreboard players set output vex.core.result 0
scoreboard players set temp vex.core.sides -1
scoreboard players set temp vex.core.times -1