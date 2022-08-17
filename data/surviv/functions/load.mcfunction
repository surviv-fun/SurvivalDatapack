##
 # load.mcfunction
 # surviv-addon
 #
 # Created by _Lucifer_1234_.
##


# Loading Sound and Textfeedback
execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 10 1
tellraw @a [{"text":"Successfully Loaded function [","color":"gray"}, {"text":"surviv:load","color":"dark_aqua"}, {"text":"]","color":"gray"}]


