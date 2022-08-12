execute as @a[scores={apply_light=1, light_level=1},  nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_1
execute as @a[scores={apply_light=1, light_level=2},  nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_2
execute as @a[scores={apply_light=1, light_level=3},  nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_3
execute as @a[scores={apply_light=1, light_level=4},  nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_4
execute as @a[scores={apply_light=1, light_level=5},  nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_5
execute as @a[scores={apply_light=1, light_level=6},  nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_6
execute as @a[scores={apply_light=1, light_level=7},  nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_7
execute as @a[scores={apply_light=1, light_level=8},  nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_8
execute as @a[scores={apply_light=1, light_level=9},  nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_9
execute as @a[scores={apply_light=1, light_level=10}, nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_10
execute as @a[scores={apply_light=1, light_level=11}, nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_11
execute as @a[scores={apply_light=1, light_level=12}, nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_12
execute as @a[scores={apply_light=1, light_level=13}, nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_13
execute as @a[scores={apply_light=1, light_level=14}, nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_14
execute as @a[scores={apply_light=1, light_level=15}, nbt={SelectedItem: {id:"minecraft:light"}}] run item modify entity @s weapon.mainhand survival_lights:level_15

scoreboard players set @a[scores={apply_light=1}] apply_light 0

scoreboard players enable @a light_level
scoreboard players enable @a apply_light

function survival_lights:view