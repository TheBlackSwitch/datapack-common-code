## Runs every tick if the datapacks are compatable

# Run all the tick functions
function #theblackswitch:tick

# Run the library tick function
schedule function theblackswitch:tick 1t replace

# Prepare for next tick
schedule function theblackswitch:version_control/datapacks_tick 1t replace
