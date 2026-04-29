

execute if score @s vex.input.settings matches 10 run scoreboard players set @s vex.dice.times 0
execute if score @s vex.input.settings matches 10 run scoreboard players set @s vex.dice.sides 0
execute if score @s vex.input.settings matches 10 run scoreboard players set @s vex.input.val 0
execute if score @s vex.input.settings matches 10 run scoreboard players set @s vex.input 0
execute if score @s vex.input.settings matches 10 run function vexdice:sr_input/chat/option

execute unless score @s vex.input.val matches 0 run function vexdice:sr_input/chat/option
execute if score @s vex.input.type matches 0 run scoreboard players operation @s vex.input = @s vex.dice.times
execute if score @s vex.input.type matches 1 run scoreboard players operation @s vex.input = @s vex.dice.sides
execute unless score @s vex.input.type matches -1 run function vexdice:sr_input/chat/option

execute if score @s vex.input.settings matches 1 run function vexdice:core/roll

scoreboard players set @s vex.input.type -1

scoreboard players set @s vex.input.val 0
scoreboard players set @s vex.input.settings 0