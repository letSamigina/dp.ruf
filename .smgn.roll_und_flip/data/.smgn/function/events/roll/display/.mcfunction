
execute if data storage .smgn.ruf:events roll{secret:"1"} run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 1
execute if data storage .smgn.ruf:events roll{secret:"0"} run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1 1


$execute if data storage .smgn.ruf:events roll{secret:"1"} run tellraw @s ["",{text:"--《ロール結果》-"},{text:"$(count)d$(faces)",color:light_purple},{text:"-["},{text:"秘匿",color:green},{text:"]--"}]
$execute if data storage .smgn.ruf:events roll{secret:"0"} run tellraw @a ["",{text:"--《"},{selector:"@s"},{text:"のロール結果》-"},{text:"$(count)d$(faces)",color:light_purple},{text:"-["},{text:"全体",color:green},{text:"]--"}]


#roll
scoreboard players set @s .sgmn.loop.roll_count 0
function .smgn:events/roll/display/roll with storage .smgn.ruf:events roll