##
 # load.mcfunction
 # surviv
 #
 # Created by _Lucifer_1234_.
##

##
 # make Itemframes invisible when containing items ?!
##
# execute as @e[type=item_frame] if data entity @s Item run data modify entity @s Invisible set value true
# execute as @e[type=item_frame] unless data entity @s Item run data modify entity @s Invisible set value false
# execute as @e[type=glow_item_frame] if data entity @s Item run data modify entity @s Invisible set value true
# execute as @e[type=glow_item_frame] unless data entity @s Item run data modify entity @s Invisible set value false

