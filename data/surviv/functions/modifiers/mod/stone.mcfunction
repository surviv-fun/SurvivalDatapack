#selected item
#---------------------------------------------------------------------------------------------------------------------
execute as @a[predicate=surviv:slots/stone/0] unless data entity @s SelectedItem.tag.TierValue run item modify entity @s weapon.mainhand surviv:tiers/modifier_setup_2

#offhand
#---------------------------------------------------------------------------------------------------------------------
execute as @a[predicate=surviv:slots/stone/-106] unless data entity @s Inventory[{Slot:-106b}].tag.TierValue run item modify entity @s weapon.offhand surviv:tiers/modifier_setup_2
