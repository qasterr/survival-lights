scoreboard objectives remove light_level
scoreboard objectives add light_level trigger "Light Level"
scoreboard players set @a light_level 15
scoreboard players enable @a light_level

scoreboard objectives remove apply_light
scoreboard objectives add apply_light trigger "Apply Light Level"
scoreboard players set @a apply_light 0
scoreboard players enable @a apply_light