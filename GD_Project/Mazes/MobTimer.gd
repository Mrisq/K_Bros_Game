extends Timer
# This node spawns the enemy mobs at regular intervals

var randy = RandomNumberGenerator.new()

# Load the mob scenes so that the enemies can be spawned
var gobScene = load("res://GD_Project/Enemies/Goblin.tscn") 
var dobScene = load("res://GD_Project/Enemies/Demon.tscn") 
var globScene = load("res://GD_Project/Enemies/Golem.tscn") 

var mob # The current mob instance

var mobsSpawned = 0 # Number of mobs already spawned

var mobsTotal = 14 # Total number of mobs to be spawned this round

# An array holding all the mob instances, so that we can
# refer to them later
var all_mobs = [] 

func _ready():
	randy.randomize()

func start_spawn_timer():
	start() # Start the timer
	_on_MobTimer_timeout() #run the timeout function once so we don't have to wait for the timer to run

# This function just stops every mob in the array
func stop_mobs():
	for m in all_mobs: # For every mob in the mob instance array
		m.set_speed(0) # Set speed to 0

# This function controls what happens when the timer runs out
# In other words, this happens every x seconds until the timer is stopped
func _on_MobTimer_timeout():
	if mobsSpawned >= mobsTotal: # If we've spawned all the mobs:
		stop() # Stop the timer
	else: #if we haven't spawned all the mobs
		
		match randy.randi_range(1,3): # Pick one of the three mob types at random and instance it
			1:
				mob = gobScene.instance() # Instance a new mob scene
			2:
				mob = dobScene.instance() # Instance a new mob scene
			3:
				mob = globScene.instance() # Instance a new mob scene
		
		all_mobs.push_back(mob) # Add the instance to the mob array
		get_node("../Enemy Path").add_child(mob) # Add the instance as a child of the path
		mob.set_index(all_mobs.size() - 1) # give the instance it's array index
		mobsSpawned += 1 # Add the new mob to the tally

# This function removes the mob at index from the array
# It then gives all the mobs their new index
func remove_mob(index):
	$Hit.play()
	all_mobs.remove(index)
	
	var counter = 0
	for m in all_mobs:
		m.set_index(counter)
		counter += 1

