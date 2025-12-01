
# Grab the current datapack
data modify storage theblackswitch:temp current_pack set from storage theblackswitch:temp packs[0]

# Check if the current pack has a higher requirement than the loaded instance of the library
function theblackswitch:version_control/check_pack

# Clear the current pack so the next pack is the first element in the array
data remove storage theblackswitch:temp packs[0]

# If there are packs to check, run the check again
execute if data storage theblackswitch:temp packs[0] run function theblackswitch:version_control/loop