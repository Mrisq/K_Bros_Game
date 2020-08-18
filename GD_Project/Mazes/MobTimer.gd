extends Timer

# This node spawns the enemy mobs at regular intervals

# Load the mob scene so that the enemies can be spawned
var mobScene = load("res://GD_Project/Enemies/Enemy1.tscn") 

var mob # The current mob instance

var mobsSpawned = 0 # Number of mobs already spawned
var mobsTotal = 11 # Total number of mobs to be spawned this round

# An array holding all the mob instances, so that we can
# refer to them later
var all_mobs = [] 

func _ready():
	start() # Start the timer

# This function just stops every mob in the array
func stop_mobs():
	for mob in all_mobs: # For every mob in the mob instance array
		mob.set_speed(0) # Set speed to 0

# This function controls what happens when the timer runs out
# In other words, this happens every x seconds until the timer is stopped
func _on_MobTimer_timeout():
	if mobsSpawned >= mobsTotal: # If we've spawned all the mobs:
		stop() # Stop the timer
	else: #if we haven't spawned all the mobs
		mob = mobScene.instance() # Instance a new mob scene
		all_mobs.push_back(mob) # Add the instance to the mob array
		get_node("../Enemy Path").add_child(mob) # Add the instance as a child of the path
		mob.set_index(all_mobs.size() - 1) # give the instance it's array index
		mobsSpawned += 1 # Add the new mob to the tally

func remove_mob(index):
	##### THIS NEEDS TO BE CHANGED SO THAT IT REMOVES THE SPECIFIC MOB THAT
	##### HAS REACHED THE END, NOT JUST THE FRONT ONE EVERY TIME...
	print("---------------------------")
	print(all_mobs)

	all_mobs.remove(index)
	var counter = 0
	for i in all_mobs:
		i.set_index(counter)
		counter += 1
	print(all_mobs)
	#all_mobs.pop_front()
