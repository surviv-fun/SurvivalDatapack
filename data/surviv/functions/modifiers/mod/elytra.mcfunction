#chest
#---------------------------------------------------------------------------------------------------------------------
execute as @a[predicate=surviv:slots/elytra/102] unless data entity @s Inventory[{Slot:102b}].tag.TierValue run item modify entity @s armor.chest surviv:tiers/modifier_setup_7
