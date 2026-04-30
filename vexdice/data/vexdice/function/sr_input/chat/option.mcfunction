
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "
tellraw @s " "


playsound entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players enable @s vex.input.val
scoreboard players enable @s vex.input.type
scoreboard players enable @s vex.input.settings
scoreboard players operation @s vex.input += @s vex.input.val
execute unless score @s vex.input.type matches -1 run scoreboard players operation @s vex.input.type.d = @s vex.input.type

execute if score @s vex.input.type.d matches 0 run scoreboard players operation @s vex.dice.times = @s vex.input
execute if score @s vex.input.type.d matches 1 run scoreboard players operation @s vex.dice.sides = @s vex.input

tellraw @s [{text:"===========",color:yellow},{text:"VEXDICE!",color:green,bold:true},{text:"===========",color:yellow}]

execute if score @s vex.input.type.d matches -1 run tellraw @s "请选择目标"
execute if score @s vex.input.type.d matches 0 run tellraw @s "当前选中: 掷骰次数"
execute if score @s vex.input.type.d matches 1 run tellraw @s "当前选中: 骰子面数"

tellraw @s [{text:"[-10] ",click_event:{action:"run_command",command:"/trigger vex.input.val add -10"},color:"red"},\
            {text:"[-5] ",click_event:{action:"run_command",command:"/trigger vex.input.val add -5"},color:"red"},\
            {text:"[-1] ",click_event:{action:"run_command",command:"/trigger vex.input.val add -1"},color:"red"},\
            \
            {text:"[[ ",color:"yellow",click_event:{action: "run_command",command:"/trigger vex.input.settings set 1"}},\
            {score:{name:"@s",objective:"vex.input"},color:"yellow",hover_event:{action: "show_text",value:"点击开始掷骰"},click_event:{action: "run_command",command:"/trigger vex.input.settings set 1"}},\
            {text:" ]]",color:"yellow",click_event:{action: "run_command",command:"/trigger vex.input.settings set 1"}},\
            \
            {text:" [+1] ",click_event:{action:"run_command",command:"/trigger vex.input.val add 1"},color:"green"},\
            {text:"[+5] ",click_event:{action:"run_command",command:"/trigger vex.input.val add 5"},color:"green"},\
            {text:"[+10] ",click_event:{action:"run_command",command:"/trigger vex.input.val add 10"},color:"green"}]

tellraw @s [{text:"[掷骰次数]   ",color:"aqua",click_event:{action:"run_command",command:"/trigger vex.input.type set 0"}},\
            {text:"[重置]   ",click_event:{action:"run_command",command:"/trigger vex.input.settings set 10"}},\
            {text:"[骰子面数]",color:"aqua",click_event:{action:"run_command",command:"/trigger vex.input.type set 1"}}]

tellraw @s [{text:"==========",color:yellow},{text:"=========",color:yellow,bold:true},{text:"==========",color:yellow}]

title @s actionbar [{text:"当前数值: ",color:"yellow"},{score:{name:"@s",objective:"vex.dice.times"},color:"yellow"},{text:"d",color:"yellow"},{score:{name:"@s",objective:"vex.dice.sides"},color:"yellow"}]