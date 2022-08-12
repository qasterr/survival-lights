tellraw @a ["",{"text":"Survival Lights ","bold":true,"italic":true,"color":"white"},{"text":"is now active!","bold":true,"color":"blue"}]

scoreboard objectives remove lifetime
scoreboard objectives add lifetime dummy

function survival_lights:triggers