extends Timer

func _ready():
	start()

func _on_FirstSpawnTimer_timeout():
	$"../MobTimer".start_spawn_timer()
