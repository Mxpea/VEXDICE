#safe
execute if score @s vex.dice.times matches 101.. run tellraw @s [{text:"你确定要骰这么多次..?",color:"red"}]
execute if score @s vex.dice.times matches 101.. run return fail

execute if score @s vex.dice.times matches ..0 run tellraw @s [{text:"好吧...但是哪里来的负数个骰子呢",color:"red"}]
execute if score @s vex.dice.times matches ..0 run return fail

#perp
data remove storage vexdice:core ran_output
scoreboard players set @s vex.input.settings 0
scoreboard players operation temp vex.core.times = @s vex.dice.times
scoreboard players operation temp vex.core.sides = @s vex.dice.sides

execute store result storage vexdice:core sides int 1 run scoreboard players get temp vex.core.sides

#start cycle
function vexdice:core/cycle_gen with storage vexdice:core

#output
tellraw @a [{text:"玩家 "},{selector: "@s"},{"text":" 掷出了: "},{score:{name:"@s",objective:"vex.dice.times"},color:"yellow"},{text:" d ",color:"gold"},{score:{name:"@s",objective:"vex.dice.sides"},color:"yellow"}]
tellraw @a [{source:storage,storage:"vexdice:core",nbt:"ran_output",color:gray},{text:" = ",color: "gold"},{"score":{"name":"output","objective":"vex.core.result"},color: "yellow"},{"text":" 点！",color:gold}]
#reset
scoreboard players set output vex.core.result 0
scoreboard players set temp vex.core.sides -1
scoreboard players set temp vex.core.times -1