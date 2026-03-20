data modify storage .smgn.ruf:events roll.secret set string storage .smgn.ruf:events num -1

$data modify storage .smgn.ruf:events temp.num set string storage .smgn.ruf:events num 0 $(digits)
data modify storage .smgn.ruf:events num set from storage .smgn.ruf:events temp.num

data modify storage .smgn.ruf:events temp.num set string storage .smgn.ruf:events num -1

execute store result score @s .smgn.ruf.events.digits run data get storage .smgn.ruf:events num


execute if data storage .smgn.ruf:events {temp:{num:"0"}} run data modify storage .smgn.ruf:events roll.count set string storage .smgn.ruf:events num -2
execute if data storage .smgn.ruf:events {temp:{num:"0"}} run scoreboard players operation @s .smgn.ruf.events.digits -= @s .smgn.num.001
execute if data storage .smgn.ruf:events {temp:{num:"0"}} run scoreboard players operation @s .smgn.ruf.events.digits -= @s .smgn.num.001
execute if data storage .smgn.ruf:events {temp:{num:"0"}} store result storage .smgn.ruf:events digits int 1 run scoreboard players get @s .smgn.ruf.events.digits

execute unless data storage .smgn.ruf:events {temp:{num:"0"}} run data modify storage .smgn.ruf:events roll.count set string storage .smgn.ruf:events num -1
execute unless data storage .smgn.ruf:events {temp:{num:"0"}} run scoreboard players operation @s .smgn.ruf.events.digits -= @s .smgn.num.001
execute unless data storage .smgn.ruf:events {temp:{num:"0"}} store result storage .smgn.ruf:events digits int 1 run scoreboard players get @s .smgn.ruf.events.digits

function .smgn:events/roll/processing with storage .smgn.ruf:events