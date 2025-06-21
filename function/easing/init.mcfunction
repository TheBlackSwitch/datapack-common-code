#--------------------REQUIREMENTS-------------------------
# 1. Run as target entity to set the animation
# 2. macro duration      = the time duration of the ease (int)
# 3. x, y, z, yaw, pitch = the relative position and rotation to ease to (int)
# 4. ease                = the ease function to use (one of: ["ease_in","ease_out","ease_in_out","linear"])
#---------------------------------------------------------

#-----------------------EXAMPLE---------------------------
# execute if score @s animation matches 1 run function theblackswitch:easing/init {duration:40,x:3,y:4,z:10,yaw:30,pitch:0,ease:"ease_in_out"}
#---------------------------------------------------------

$data modify storage theblackswitch:temp easing set value {duration:$(duration),x:$(x),y:$(y),z:$(z),yaw:$(yaw),pitch:$(pitch),ease:"$(ease)"}
tag @s add tbs.easing

execute store result score @s tbs.easing.duration run data get storage theblackswitch:temp easing.duration 1
execute store result score @s tbs.easing.current_tick run data get storage theblackswitch:temp easing.duration 1
execute store result score @s tbs.easing.x run data get storage theblackswitch:temp easing.x 1000
execute store result score @s tbs.easing.y run data get storage theblackswitch:temp easing.y 1000
execute store result score @s tbs.easing.z run data get storage theblackswitch:temp easing.z 1000
execute store result score @s tbs.easing.yaw run data get storage theblackswitch:temp easing.yaw 1000
execute store result score @s tbs.easing.pitch run data get storage theblackswitch:temp easing.pitch 1000

execute if data storage theblackswitch:temp {easing:{ease:"ease_in"}} run return run scoreboard players set @s tbs.easing.ease 1
execute if data storage theblackswitch:temp {easing:{ease:"ease_out"}} run return run scoreboard players set @s tbs.easing.ease 2
execute if data storage theblackswitch:temp {easing:{ease:"ease_in_out"}} run return run scoreboard players set @s tbs.easing.ease 3
scoreboard players set @s tbs.easing.ease 4
