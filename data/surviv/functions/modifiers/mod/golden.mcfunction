#selected item
#---------------------------------------------------------------------------------------------------------------------
execute as @a[predicate=surviv:slots/golden/0] unless data entity @s SelectedItem.tag.TierValue run item modify entity @s weapon.mainhand surviv:tiers/modifier_setup_4

#offhand
#---------------------------------------------------------------------------------------------------------------------
execute as @a[predicate=surviv:slots/golden/-106] unless data entity @s Inventory[{Slot:-106b}].tag.TierValue run item modify entity @s weapon.offhand surviv:tiers/modifier_setup_4

