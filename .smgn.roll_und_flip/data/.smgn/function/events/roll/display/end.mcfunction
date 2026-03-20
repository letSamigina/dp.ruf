
execute if data storage .smgn.ruf:events roll{secret:"1"} run tellraw @s ["",{text:"-------------------------"}]
execute if data storage .smgn.ruf:events roll{secret:"0"} run tellraw @a ["",{text:"------------------------------------"}]

scoreboard players set @s .sgmn.loop.roll_count 0
scoreboard players set @s .sgmn.result.roll 0

scoreboard players set @s .smgn.ruf.events 0
scoreboard players enable @s .smgn.ruf.events