execute at @s if entity @e[type=item_frame,tag=itemholderS,distance=..2] run tag @s add reforge
execute as @s[tag=reforge] unless entity @s[nbt={Offers:{Recipes:[{buy:{id:"minecraft:amethyst_shard"}}]}}] run data modify entity @s Offers.Recipes append value {maxUses:1,xp:0,rewardExp:0b,buy:{id:"minecraft:amethyst_shard",Count:1b},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:iron_axe",Count:1b,tag:{Destroy:1,HideFlags:2,display:{Name:'{"text":"Reforge Item","italic":false}'}}}}

execute as @s[tag=reforge] unless entity @s[nbt={Silent:1b}] run data modify entity @s Silent set value 1
execute as @s[tag=!reforge] if entity @s[nbt={Silent:1b}] run data modify entity @s Silent set value 0

execute as @s at @s unless entity @e[type=item_frame,tag=itemholderS,distance=..2] run tag @s remove reforge
execute as @s[nbt={Offers:{Recipes:[{buy:{id:"minecraft:amethyst_shard"}}]}},tag=!reforge] run data remove entity @s Offers.Recipes[{maxUses:1,xp:0,rewardExp:0b,buy:{id:"minecraft:amethyst_shard"},buyB:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:iron_axe",Count:1b,tag:{Destroy:1,HideFlags:2,display:{Name:'{"text":"Reforge Item","italic":false}'}}}}]

execute as @s[tag=reforge] at @s if entity @s[nbt={Offers:{Recipes:[{uses:0,buy:{id:"minecraft:amethyst_shard"}}]}}] unless data entity @s HandItems[0].tag.TierValue run data modify entity @s HandItems[0] set from entity @e[type=item_frame,tag=itemholderS,distance=..2,sort=nearest,limit=1] Item
execute as @s[tag=!reforge] if data entity @s HandItems[0].tag.TierValue run item replace entity @s weapon.mainhand with air

execute as @s[tag=reforge] at @s store result score @s reforgeCostT run data get entity @e[type=item_frame,tag=itemholderS,distance=..2,sort=nearest,limit=1] Item.tag.TierValue
execute as @s[tag=reforge] at @s store result score @s reforgeCostM run data get entity @e[type=item_frame,tag=itemholderS,distance=..2,sort=nearest,limit=1] Item.tag.ModifierTier
execute as @s[tag=!reforge] at @s run scoreboard players reset @s reforgeCostM
execute as @s[tag=!reforge] at @s run scoreboard players reset @s reforgeCostT

execute as @s[tag=reforge] store result entity @s Offers.Recipes[{buy:{id:"minecraft:amethyst_shard"}}].buy.Count byte 1 run scoreboard players operation @s reforgeCostT *= @s reforgeCostM

execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] run item modify entity @s weapon.mainhand surviv:tiers/reset
execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] if data entity @s HandItems[{tag:{RandomModifier:-1,HasModifier:0b,Type:2}}].tag.TierValue run data remove entity @s HandItems[0].tag.AttributeModifiers[]

execute as @e[type=villager,nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}},tag=reforge] if data entity @s HandItems[{tag:{RandomModifier:-1,HasModifier:0b}}].tag.TierValue if entity @s[nbt={HandItems:[{tag:{Type:1}}]}] run item modify entity @s weapon.mainhand surviv:random_modifiers_tools
execute as @e[type=villager,nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}},tag=reforge] if data entity @s HandItems[{tag:{RandomModifier:-1,HasModifier:0b}}].tag.TierValue if entity @s[nbt={HandItems:[{tag:{Type:2}}]}] run item modify entity @s weapon.mainhand surviv:random_modifiers_armor

execute as @e[type=villager,nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}},tag=reforge] unless data entity @s HandItems[{tag:{RandomModifier:-1}}] if data entity @s HandItems[0].tag.RandomModifier run function surviv:modifiers/name/villager

execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] at @s unless data entity @s HandItems[{tag:{RandomModifier:-1}}] if data entity @s HandItems[0].tag.TierValue run data modify entity @e[type=item_frame,tag=itemholderS,distance=..2,sort=nearest,limit=1] Item set from entity @s HandItems[0]
execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] at @s positioned as @e[type=item_frame,tag=itemholderS,sort=nearest,distance=..2,limit=1] run playsound minecraft:block.smithing_table.use neutral @a[distance=..6] ~ ~ ~ 1 0.8 0
execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] at @s positioned as @e[type=item_frame,tag=itemholderS,sort=nearest,distance=..2,limit=1] run particle minecraft:block minecraft:anvil ~ ~ ~ 0.1 0.1 0.1 0 7 force @a[distance=..10]

execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] at @s if entity @s[nbt={HandItems:[{tag:{ModifierTier:1}}]}] run title @a[distance=..4] actionbar [{"text":"Modifier:","color":"white","underlined":true},{"text":" ","underlined":false},{"nbt":"Item.tag.RandomModifier","entity":"@e[type=item_frame,tag=itemholderS,distance=..2,sort=nearest,limit=1]","color":"dark_red","underlined":true}]
execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] at @s if entity @s[nbt={HandItems:[{tag:{ModifierTier:2}}]}] run title @a[distance=..4] actionbar [{"text":"Modifier:","color":"white","underlined":true},{"text":" ","underlined":false},{"nbt":"Item.tag.RandomModifier","entity":"@e[type=item_frame,tag=itemholderS,distance=..2,sort=nearest,limit=1]","color":"red","underlined":true}]
execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] at @s if entity @s[nbt={HandItems:[{tag:{ModifierTier:3}}]}] run title @a[distance=..4] actionbar [{"text":"Modifier:","color":"white","underlined":true},{"text":" ","underlined":false},{"nbt":"Item.tag.RandomModifier","entity":"@e[type=item_frame,tag=itemholderS,distance=..2,sort=nearest,limit=1]","color":"yellow","underlined":true}]
execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] at @s if entity @s[nbt={HandItems:[{tag:{ModifierTier:4}}]}] run title @a[distance=..4] actionbar [{"text":"Modifier:","color":"white","underlined":true},{"text":" ","underlined":false},{"nbt":"Item.tag.RandomModifier","entity":"@e[type=item_frame,tag=itemholderS,distance=..2,sort=nearest,limit=1]","color":"light_purple","underlined":true}]
execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] at @s if entity @s[nbt={HandItems:[{tag:{ModifierTier:5}}]}] run title @a[distance=..4] actionbar [{"text":"Modifier:","color":"white","underlined":true},{"text":" ","underlined":false},{"nbt":"Item.tag.RandomModifier","entity":"@e[type=item_frame,tag=itemholderS,distance=..2,sort=nearest,limit=1]","color":"blue","underlined":true}]
execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] at @s if entity @s[nbt={HandItems:[{tag:{ModifierTier:6}}]}] run title @a[distance=..4] actionbar [{"text":"Modifier:","color":"white","underlined":true},{"text":" ","underlined":false},{"nbt":"Item.tag.RandomModifier","entity":"@e[type=item_frame,tag=itemholderS,distance=..2,sort=nearest,limit=1]","color":"green","underlined":true}]
execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] at @s if entity @s[nbt={HandItems:[{tag:{ModifierTier:7}}]}] run title @a[distance=..4] actionbar [{"text":"Modifier:","color":"white","underlined":true},{"text":" ","underlined":false},{"nbt":"Item.tag.RandomModifier","entity":"@e[type=item_frame,tag=itemholderS,distance=..2,sort=nearest,limit=1]","color":"aqua","underlined":true}]

execute as @s[nbt={Offers:{Recipes:[{uses:1,buy:{id:"minecraft:amethyst_shard"}}]}}] run data modify entity @s Offers.Recipes[{buy:{id:"minecraft:amethyst_shard"}}].uses set value 0
