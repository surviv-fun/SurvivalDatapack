execute as @a if data entity @s SelectedItem.tag.TierValue run item modify entity @s weapon.mainhand surviv:tiers/reset
execute as @a if entity @s[nbt={SelectedItem:{tag:{Type:1}}}] run item modify entity @s weapon.mainhand surviv:random_modifiers_tools
execute as @a if entity @s[nbt={SelectedItem:{tag:{Type:2}}}] run item modify entity @s weapon.mainhand surviv:random_modifiers_armor