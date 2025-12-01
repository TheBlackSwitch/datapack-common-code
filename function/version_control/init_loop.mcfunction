
# Wait for a player to start compatability check send the messages
execute unless entity @a run return run schedule function theblackswitch:version_control/init_loop 1t

# The packs start as compatable
data modify storage theblackswitch:versions compatable set value 1b

# Loop through all the packs to check if some are actually incompatable
data modify storage theblackswitch:temp packs set from storage theblackswitch:versions packs
function theblackswitch:version_control/loop

# If the packs are compatable, start running the ticks
execute if data storage theblackswitch:versions {"compatable":1b} run return run schedule function theblackswitch:version_control/datapacks_tick 1t replace

# Oh no! the packs are incompatable, show a permanent message
schedule function theblackswitch:version_control/incompatable_tick 1t replace