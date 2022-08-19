##
 # load.mcfunction
 # surviv
 #
 # Created by _Lucifer_1234_.
##

##
 # make Itemframes invisible when containing items ?!
##
execute as @e[type=item_frame] if data entity @s Item run data modify entity @s Invisible set value true
execute as @e[type=item_frame] unless data entity @s Item run data modify entity @s Invisible set value false
execute as @e[type=glow_item_frame] if data entity @s Item run data modify entity @s Invisible set value true
execute as @e[type=glow_item_frame] unless data entity @s Item run data modify entity @s Invisible set value false

execute as @a at @s if predicate surviv:slots/any/any run function surviv:modifiers/modifier_random

execute as @a unless entity @s[predicate=surviv:modify/speed_change/0] run attribute @s generic.attack_speed base set 4
execute as @a unless entity @s[predicate=surviv:modify/damage_change/0] run attribute @s generic.attack_damage base set 1
execute as @a unless entity @s[predicate=surviv:modify/armor_change/0] run attribute @s generic.armor base set 0

execute as @e[type=item] at @s if data entity @s Item.tag.RandomModifier if block ~ ~-0.4 ~ smithing_table unless entity @e[type=item_frame,tag=itemholderS,distance=..1] run tag @s add killme
execute as @e[type=item,tag=killme,nbt={Age:1s}] run tag @s add nvm
execute as @e[type=item,tag=killme,nbt={Age:2s}] run tag @s add nvm
execute as @e[type=item,tag=killme,tag=!nvm,nbt=!{Age:1s},nbt=!{Age:2s}] at @s run summon item_frame ~ ~ ~ {Facing:1b,Tags:["itemholderS"],Invisible:1b,Silent:1b}
execute as @e[type=item_frame,tag=itemholderS] at @s run data modify entity @s Item set from entity @e[type=item,sort=nearest,limit=1,tag=killme,distance=..1] Item
execute as @e[type=item,tag=killme,tag=!nvm] at @s if entity @e[type=item_frame,tag=itemholderS,nbt={Item:{}},distance=..1] run playsound block.stone.place block @a[distance=..3] ~ ~ ~ 1 0.8 0
execute as @e[type=item,tag=killme,tag=!nvm] at @s if entity @e[type=item_frame,tag=itemholderS,nbt={Item:{}},distance=..1] run playsound block.wood.step block @a[distance=..3] ~ ~ ~ 1 0.8 0
execute as @e[type=item,tag=killme,tag=!nvm] at @s if entity @e[type=item_frame,tag=itemholderS,nbt={Item:{}},distance=..1] run kill @s

execute as @e[type=item_frame,tag=itemholderS] unless entity @s[nbt={Item:{}}] run kill @s
execute as @e[type=item_frame,tag=itemholderS] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
execute as @e[type=item_frame,tag=itemholderS] at @s unless block ~ ~-0.4 ~ smithing_table run summon item ~ ~ ~ {Item:{id:"minecraft:stone_button",Count:1b},Tags:["replaceme"]}
execute as @e[type=item,tag=replaceme] run data modify entity @s Item set from entity @e[type=item_frame,tag=itemholderS,sort=nearest,limit=1] Item
execute as @e[type=item_frame,tag=itemholderS] at @s unless block ~ ~-0.4 ~ smithing_table run kill @s


execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run function surviv:modifiers/reforgesystem

kill @e[type=item,nbt={Item:{tag:{Destroy:1}}}]
clear @a minecraft:iron_axe{Destroy:1}