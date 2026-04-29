#perp
scoreboard players set @s vex.input.settings 0
scoreboard players operation temp vex.core.times = @s vex.dice.times
scoreboard players operation temp vex.core.sides = @s vex.dice.sides

execute store result storage vexdice:core sides int 1 run scoreboard players get temp vex.core.sides

#start cycle
function vexdice:core/cycle_gen with storage vexdice:core

#output
tellraw @a [{text:"玩家 "},{selector: "@s"},{"text":" 掷出了 "},{"score":{"name":"output","objective":"vex.core.result"}},{"text":" 点！"}]

#reset
data remove storage vexdice:core ran_output
scoreboard players set output vex.core.result 0
scoreboard players set temp vex.core.sides -1
scoreboard players set temp vex.core.times -1