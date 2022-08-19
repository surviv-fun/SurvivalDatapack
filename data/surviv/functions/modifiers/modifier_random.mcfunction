
#modifier setup
#----------------------------------------------------------------------------
execute as @a[predicate=surviv:slots/wooden/any] run function surviv:modifiers/mod/wooden
execute as @a[predicate=surviv:slots/stone/any] run function surviv:modifiers/mod/stone
execute as @a[predicate=surviv:slots/iron/any] run function surviv:modifiers/mod/iron
execute as @a[predicate=surviv:slots/golden/any] run function surviv:modifiers/mod/golden
execute as @a[predicate=surviv:slots/diamond/any] run function surviv:modifiers/mod/diamond
execute as @a[predicate=surviv:slots/elytra/102] run function surviv:modifiers/mod/elytra
execute as @a[predicate=surviv:slots/netherite/any] run function surviv:modifiers/mod/netherite


#give random modifier
#----------------------------------------------------------------------------
execute as @a[predicate=surviv:slots/any/0] if data entity @s SelectedItem{tag:{RandomModifier:-1}}.tag.TierValue run item modify entity @s weapon.mainhand modifier:random_modifiers_tools
execute as @a[predicate=surviv:slots/any/-106] if data entity @s Inventory[{Slot:-106b,tag:{RandomModifier:-1}}].tag.TierValue run item modify entity @s weapon.offhand surviv:random_modifiers_tools
execute as @a[predicate=surviv:slots/any/102] if data entity @s Inventory[{Slot:102b,tag:{RandomModifier:-1}}].tag.TierValue run item modify entity @s armor.chest surviv:random_modifiers_armor

#modifier name change
#---------------------------------------------------------------------------
execute as @a[predicate=surviv:slots/any/0] unless data entity @s SelectedItem{tag:{RandomModifier:-1}} if data entity @s SelectedItem.tag.RandomModifier run function surviv:modifiers/name/mainhand
execute as @a[predicate=surviv:slots/any/-106] unless data entity @s Inventory[{Slot:-106b,tag:{RandomModifier:-1}}] if data entity @s Inventory[{Slot:-106b}].tag.RandomModifier run function surviv:modifiers/name/offhand
execute as @a[predicate=surviv:slots/any/102] unless data entity @s Inventory[{Slot:102b,tag:{RandomModifier:-1}}] if data entity @s Inventory[{Slot:102b}].tag.RandomModifier run function surviv:modifiers/name/chest

#modifier changes
#---------------------------------------------------------------------------
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Sluggish"}}}] run attribute @s generic.attack_speed base set 3.7

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Annoying"}}}] run attribute @s generic.attack_damage base set -0.3
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Annoying"}}}] run attribute @s generic.attack_speed base set 3.7

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Terrible"}}}] run attribute @s generic.attack_damage base set 0

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Broken"}}}] run attribute @s generic.attack_damage base set -1

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Bulky"}}}] run attribute @s generic.attack_damage base set 1.3
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Bulky"}}}] run attribute @s generic.attack_speed base set 3.7

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Shoddy"}}}] run attribute @s generic.attack_damage base set 0.6
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Shoddy"}}}] run attribute @s generic.attack_speed base set 3.75

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Dull"}}}] run attribute @s generic.attack_damage base set 0.4

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Dangerous"}}}] run attribute @s generic.attack_damage base set 1.2
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Dangerous"}}}] run attribute @s generic.attack_speed base set 4.1

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Unhappy"}}}] run attribute @s generic.attack_speed base set 3.5

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Murderous"}}}] run attribute @s generic.attack_damage base set 1.4
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Murderous"}}}] run attribute @s generic.attack_speed base set 4.25

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Savage"}}}] run attribute @s generic.attack_damage base set 1.3
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Savage"}}}] run attribute @s generic.attack_speed base set 3.9

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Unpleasant"}}}] run attribute @s generic.attack_damage base set 1.2

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Sharp"}}}] run attribute @s generic.attack_damage base set 1.55

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Ruthless"}}}] run attribute @s generic.attack_damage base set 1.6
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Ruthless"}}}] run attribute @s generic.attack_speed base set 3.65

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Epic"}}}] run attribute @s generic.attack_damage base set 1.8
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Epic"}}}] run attribute @s generic.attack_speed base set 4.3
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Epic"}}}] run attribute @s generic.armor base set 1

execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Legendary"}}}] run attribute @s generic.attack_damage base set 2
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Legendary"}}}] run attribute @s generic.attack_speed base set 4.4
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Legendary"}}}] run attribute @s generic.armor base set 2
execute as @a[nbt={SelectedItem:{tag:{RandomModifier:"Legendary"}}}] run attribute @s generic.armor base set 2

