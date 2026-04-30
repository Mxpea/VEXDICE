#perp
scoreboard players set output vex.core.result 0
data remove storage vexdice:core ran_output

#temp
#vex.core.times.d
#vex.core.sides

scoreboard players operation temp vex.core.times = temp vex.core.times.d
execute store result storage vexdice:core sides int 1 run scoreboard players get temp vex.core.sides

#start cycle
function vexdice:core/cycle_gen with storage vexdice:core

#reset -- remember reset after roll
#scoreboard players set output vex.core.result 0
#scoreboard players set temp vex.core.sides -1
#scoreboard players set temp vex.core.times -1