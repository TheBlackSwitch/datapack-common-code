
# Stop an already ticking loop
schedule clear theblackswitch:version_control/datapacks_tick
schedule clear theblackswitch:version_control/incompatable_tick

# The version of this instance of the library
data modify storage theblackswitch:versions lib.current set value [1,1,0]

# Prepare to loop through all the dependant datapacks and check for incompatabilities
schedule function theblackswitch:version_control/init_loop 3t replace