execute store result storage .smgn.ruf:events num int 1 run scoreboard players get @s .smgn.ruf.events

data modify storage .smgn.ruf:events num set string storage .smgn.ruf:events num
execute store result score @s .smgn.ruf.events.digits run data get storage .smgn.ruf:events num

scoreboard players operation @s .smgn.ruf.events.digits -= @s .smgn.num.001
execute store result storage .smgn.ruf:events digits int 1 run scoreboard players get @s .smgn.ruf.events.digits

function .smgn:events/roll/disassemble with storage .smgn.ruf:events