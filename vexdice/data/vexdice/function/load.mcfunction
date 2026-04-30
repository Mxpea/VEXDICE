tellraw @a {"text":"VEXDICE! has been loaded!","color":"green","bold":true}
tellraw @a {"text":"推荐使用Replay或Flashback模组搭配游戏内语音(可安装拓展以记录语音)来录制人物动作","color":"green","bold":true}

function vexdice:sr_input/scoreboard
function vexdice:core/scoreboard
function vexdice:char_card/scoreboard

scoreboard objectives add vex.setting trigger
scoreboard objectives add vex.dice.times dummy
scoreboard objectives add vex.dice.sides dummy

scoreboard objectives add vex.math.constant dummy

scoreboard players set C5 vex.math.constant 5