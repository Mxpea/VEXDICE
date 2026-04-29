
execute if score temp vex.core.times matches ..0 run return 1
$execute store result storage vexdice:core ranval int 1 run random value 1..$(sides)
data modify storage vexdice:core ran_output append from storage vexdice:core ranval

scoreboard players remove temp vex.core.times 1
execute if score temp vex.core.times matches 1.. run function vexdice:core/score_operation with storage vexdice:core
execute if score temp vex.core.times matches 1.. run function vexdice:core/cycle_gen with storage vexdice:core