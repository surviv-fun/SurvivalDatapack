
#melee
#-------------------------------------------------------------------------

#     +ATTACK SPEED

#careless
execute if data entity @s SelectedItem.tag{RandomModifier:"Careless"} unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/careless



#     +ATTACK DAMAGE

#legendary
execute if data entity @s SelectedItem.tag{RandomModifier:"Legendary"} unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/legendary

#epic
execute if data entity @s SelectedItem.tag{RandomModifier:"Epic"} unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/epic

#ruthless
execute if data entity @s SelectedItem.tag{RandomModifier:"Ruthless"} unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/ruthless

#unpleasant
execute if data entity @s SelectedItem.tag{RandomModifier:"Unpleasant"} unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/unpleasant

#sharp
execute if data entity @s SelectedItem.tag{RandomModifier:"Sharp"} unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/sharp

#savage
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Savage"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/savage

#dangerous
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Dangerous"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/dangerous

#murderous
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Murderous"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/murderous

#     +ATTACK SPEED

#quick
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Quick"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/quick



#     -ATTACK SPEED

#unhappy
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Unhappy"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/unhappy

#sluggish
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Sluggish"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/sluggish

#bulky
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Bulky"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/bulky



#     -ATTACK DAMAGE

#shoddy
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Shoddy"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/shoddy

#dull
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Dull"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/dull

#annoying
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Annoying"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/annoying

#terrible
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Terrible"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/terrible

#broken
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"Broken"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/broken



#     NONE

#none
execute if entity @s[nbt={SelectedItem:{tag:{RandomModifier:"None"}}}] unless data entity @s SelectedItem.tag.HasModifier run item modify entity @s weapon.mainhand surviv:modifiers/melee/none