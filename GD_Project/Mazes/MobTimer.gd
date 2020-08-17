extends Timer

var scene = load("res://GD_Project/Enemies/Enemy1.tscn")
var scene_instance = scene.instance()

var mobsSpawned = 0 # Number of mobs already spawned
var mobsTotal = 10 # Total number of mobs to be spawned this round

func _ready():
	start() # Start the timer

func _on_MobTimer_timeout():
	if mobsSpawned == mobsTotal: # If we've spawned all the mobs:
		stop() # Stop the timer
	else:
		mobsSpawned += 1
		scene_instance = scene.instance()
		get_node("../Enemy Path").add_child(scene_instance)
