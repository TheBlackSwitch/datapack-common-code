##ATTENTION, THIS FILE CAN RUN MULTIPLE TIMES!!

##Init tick function
schedule function theblackswitch:tick 1t replace

##Inits
function theblackswitch:player_id/init
function theblackswitch:slow_tick/init

##scoreboards
scoreboard objectives add temp dummy
scoreboard objectives add tbs.server_data dummy

team add no_collide
team modify no_collide collisionRule never