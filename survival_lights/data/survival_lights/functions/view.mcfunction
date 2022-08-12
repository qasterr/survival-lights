# Add tag "view" to players wearing a leather helmet named "View Lights" (case-sensitive)
execute as @a if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet", tag: {display: {Name: '{"text":"View Lights"}'}}}]}] run tag @s add view
execute as @a unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet", tag: {display: {Name: '{"text":"View Lights"}'}}}]}] run tag @s remove view

# Increase lifetime
execute as @e[tag=torch] run scoreboard players add @s lifetime 1
# Reset it if a player is within range
execute as @e[tag=torch] at @s if entity @e[tag=view, distance=..9] run scoreboard players set @s lifetime 0

# When its lifetime has expired, replace the block the armour stand is standing in with a light block of the corresponding light level
execute as @e[tag=light_level_1, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=1]
execute as @e[tag=light_level_2, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=2]
execute as @e[tag=light_level_3, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=3]
execute as @e[tag=light_level_4, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=4]
execute as @e[tag=light_level_5, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=5]
execute as @e[tag=light_level_6, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=6]
execute as @e[tag=light_level_7, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=7]
execute as @e[tag=light_level_8, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=8]
execute as @e[tag=light_level_9, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=9]
execute as @e[tag=light_level_10, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=10]
execute as @e[tag=light_level_11, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=11]
execute as @e[tag=light_level_12, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=12]
execute as @e[tag=light_level_13, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=13]
execute as @e[tag=light_level_14, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=14]
execute as @e[tag=light_level_15, scores={lifetime=40..}] at @s run setblock ~ ~ ~ light[level=15]

execute as @e[tag=torch] if score @s lifetime matches 41.. run kill @s

execute as @e[tag=torch, tag=!spawning] at @s unless block ~ ~ ~ torch if score @s lifetime matches ..40 run tag @s add broken
# Replace the dropped torch (if it exists) with a light block
execute as @e[tag=broken, tag=light_level_1] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 1}}}
execute as @e[tag=broken, tag=light_level_2] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 2}}}
execute as @e[tag=broken, tag=light_level_3] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 3}}}
execute as @e[tag=broken, tag=light_level_4] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 4}}}
execute as @e[tag=broken, tag=light_level_5] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 5}}}
execute as @e[tag=broken, tag=light_level_6] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 6}}}
execute as @e[tag=broken, tag=light_level_7] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 7}}}
execute as @e[tag=broken, tag=light_level_8] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 8}}}
execute as @e[tag=broken, tag=light_level_9] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 9}}}
execute as @e[tag=broken, tag=light_level_10] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 10}}}
execute as @e[tag=broken, tag=light_level_11] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 11}}}
execute as @e[tag=broken, tag=light_level_12] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 12}}}
execute as @e[tag=broken, tag=light_level_13] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 13}}}
execute as @e[tag=broken, tag=light_level_14] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 14}}}
execute as @e[tag=broken, tag=light_level_15] at @s run data modify entity @e[type=item, nbt={Item:{id: "minecraft:torch"}}, distance=0..2, limit=1, sort=nearest] Item set value {id: "minecraft:light", Count: 1b, tag: {BlockStateTag: {level: 15}}}
execute as @e[tag=broken] run kill @s

# Thanks to https://technical-minecraft.fandom.com/wiki/Replacing_a_block_with_an_entity_(such_as_falling_sand)
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_1', 'spawning']}"} replace light[level=1]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_2', 'spawning']}"} replace light[level=2]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_3', 'spawning']}"} replace light[level=3]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_4', 'spawning']}"} replace light[level=4]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_5', 'spawning']}"} replace light[level=5]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_6', 'spawning']}"} replace light[level=6]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_7', 'spawning']}"} replace light[level=7]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_8', 'spawning']}"} replace light[level=8]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_9', 'spawning']}"} replace light[level=9]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_10', 'spawning']}"} replace light[level=10]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_11', 'spawning']}"} replace light[level=11]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_12', 'spawning']}"} replace light[level=12]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_13', 'spawning']}"} replace light[level=13]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_14', 'spawning']}"} replace light[level=14]
execute as @a[tag=view] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 command_block{auto: 1, Command: "/summon minecraft:armor_stand ~ ~-.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:['torch', 'light_level_15', 'spawning']}"} replace light[level=15]
execute as @e[tag=spawning] at @s run setblock ~ ~ ~ torch
execute as @e[tag=spawning] run tag @s remove spawning