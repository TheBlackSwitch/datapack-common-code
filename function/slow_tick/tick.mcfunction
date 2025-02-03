##Add 1 to all slow_ticks
scoreboard players add .2 slow_tick 1
scoreboard players add .3 slow_tick 1
scoreboard players add .4 slow_tick 1
scoreboard players add .5 slow_tick 1
scoreboard players add .6 slow_tick 1
scoreboard players add .7 slow_tick 1
scoreboard players add .8 slow_tick 1
scoreboard players add .9 slow_tick 1
scoreboard players add .10 slow_tick 1
scoreboard players add .18 slow_tick 1
scoreboard players add .20 slow_tick 1
scoreboard players add .22 slow_tick 1
scoreboard players add .40 slow_tick 1
scoreboard players add .44 slow_tick 1
scoreboard players add .60 slow_tick 1
scoreboard players add .100 slow_tick 1
scoreboard players add .160 slow_tick 1

##Random delayed slow ticks
execute if score .160 slow_tick matches 160 store result score .160 random_delay run random value 1..160
execute if score .60 slow_tick matches 60 store result score .60 random_delay run random value 1..60
execute if score .20 slow_tick matches 20 store result score .20 random_delay run random value 1..20
execute if score .10 slow_tick matches 10 store result score .10 random_delay run random value 1..10
execute if score .3 slow_tick matches 3 store result score .3 random_delay run random value 1..3
execute if score .5 slow_tick matches 5 store result score .5 random_delay run random value 1..5

##Reset the slow_ticks
execute if score .2 slow_tick matches 2.. run scoreboard players set .2 slow_tick 0
execute if score .3 slow_tick matches 3.. run scoreboard players set .3 slow_tick 0
execute if score .4 slow_tick matches 4.. run scoreboard players set .4 slow_tick 0
execute if score .5 slow_tick matches 5.. run scoreboard players set .5 slow_tick 0
execute if score .6 slow_tick matches 6.. run scoreboard players set .6 slow_tick 0
execute if score .7 slow_tick matches 7.. run scoreboard players set .7 slow_tick 0
execute if score .8 slow_tick matches 8.. run scoreboard players set .8 slow_tick 0
execute if score .9 slow_tick matches 9.. run scoreboard players set .9 slow_tick 0
execute if score .10 slow_tick matches 10.. run scoreboard players set .10 slow_tick 0
execute if score .18 slow_tick matches 18.. run scoreboard players set .18 slow_tick 0
execute if score .20 slow_tick matches 20.. run scoreboard players set .20 slow_tick 0
execute if score .22 slow_tick matches 22.. run scoreboard players set .22 slow_tick 0
execute if score .40 slow_tick matches 40.. run scoreboard players set .40 slow_tick 0
execute if score .44 slow_tick matches 44.. run scoreboard players set .44 slow_tick 0
execute if score .60 slow_tick matches 60.. run scoreboard players set .60 slow_tick 0
execute if score .100 slow_tick matches 100.. run scoreboard players set .100 slow_tick 0
execute if score .160 slow_tick matches 160.. run scoreboard players set .160 slow_tick 0