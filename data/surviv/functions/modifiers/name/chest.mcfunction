#armor
#-------------------------------------------------------------------------

#     +DEFENSE

#hard
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Hard"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/hard

#masked
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Masked"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/masked

#armored
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Armored"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/armored

#warding
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Warding"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/warding



#     +ATTACK DAMAGE

#jagged
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Jagged"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/jagged

#thorned
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Thorned"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/thorned

#angry
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Angry"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/angry

#menacing
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Menacing"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/menacing



#     +MOVEMENT SPEED

#light
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Light"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/light

#hasty
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Hasty"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/hasty

#quick
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Quick "}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/quick



#     +ATTACK SPEED

#wild
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Wild"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/wild

#rash
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Rash"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/rash

#violent
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Violent"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/violent



#     -DEFENSE

#broken
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Broken "}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/broken

#weak
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Weak"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/weak



#     -MOVEMENT SPEED

#heavy
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"Heavy"}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/heavy



#     NONE

#none
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{RandomModifier:"None "}}]}] unless data entity @s Inventory[{Slot:102b}].tag.HasModifier run item modify entity @s armor.chest surviv:modifiers/armor/elytra/none