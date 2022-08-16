tellraw @a ["",{"text":"Survival Lights ","bold":true,"italic":true,"color":"white"},{"text":"is now active!","bold":true,"color":"blue"}]
tellraw @a {"text":"Need help? Click here!","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/qasterr/survival-lights"}}

scoreboard objectives remove lifetime
scoreboard objectives add lifetime dummy

function survival_lights:triggers