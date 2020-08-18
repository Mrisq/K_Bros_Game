extends Timer

var mobScene = load("res://GD_Project/Enemies/Enemy1.tscn")
var mob = mobScene.instance()

var mobsSpawned = 0 # Number of mobs already spawned
var mobsTotal = 11 # Total number of mobs to be spawned this round

var all_mobs = []

func _ready():
	start() # Start the timer

func stop_mobs():
	for mob in all_mobs:
		mob.set_speed(0)

func _on_MobTimer_timeout():
	if mobsSpawned >= mobsTotal: # If we've spawned all the mobs:
		stop() # Stop the timer
	else:
		mobsSpawned += 1
		mob = mobScene.instance()
		all_mobs.push_back(mob)
		get_node("../Enemy Path").add_child(mob)

func remove_mob():
	##### THIS NEEDS TO BE CHANGED SO THAT IT REMOVES THE SPECIFIC MOB THAT
	##### HAS REACHED THE END, NOT JUST THE FRONT ONE EVERY TIME...
	all_mobs.pop_front()
