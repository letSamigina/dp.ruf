$data modify storage .smgn.ruf:events temp.num set string storage .smgn.ruf:events num 0 $(digits)

data modify storage .smgn.ruf:events roll.faces set string storage .smgn.ruf:events temp.num 3

data modify storage .smgn.ruf:events temp.num set value ""

function .smgn:events/roll/display/ with storage .smgn.ruf:events roll