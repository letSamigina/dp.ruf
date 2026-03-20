
$execute store result score @s .sgmn.result.roll run random value 1..$(faces) 

scoreboard players add @s .sgmn.loop.roll_count 1


execute if score @s .sgmn.loop.roll_count matches ..9 if data storage .smgn.ruf:events roll{secret:"1"} run tellraw @s ["",{text:"0"},{score:{name:"@s",objective:".sgmn.loop.roll_count"}},{text:"回目: "},{score:{name:"@s",objective:".sgmn.result.roll"}}]
execute if score @s .sgmn.loop.roll_count matches 10.. if data storage .smgn.ruf:events roll{secret:"1"} run tellraw @s ["",{score:{name:"@s",objective:".sgmn.loop.roll_count"}},{text:"回目: "},{score:{name:"@s",objective:".sgmn.result.roll"}}]

execute if score @s .sgmn.loop.roll_count matches ..9 if data storage .smgn.ruf:events roll{secret:"0"} run tellraw @a ["",{text:"0"},{score:{name:"@s",objective:".sgmn.loop.roll_count"}},{text:"回目: "},{score:{name:"@s",objective:".sgmn.result.roll"}}]
execute if score @s .sgmn.loop.roll_count matches 10.. if data storage .smgn.ruf:events roll{secret:"0"} run tellraw @a ["",{score:{name:"@s",objective:".sgmn.loop.roll_count"}},{text:"回目: "},{score:{name:"@s",objective:".sgmn.result.roll"}}]


$execute unless score @s .sgmn.loop.roll_count matches $(count).. run function .smgn:events/roll/display/roll with storage .smgn.ruf:events roll
$execute if score @s .sgmn.loop.roll_count matches $(count).. run function .smgn:events/roll/display/end