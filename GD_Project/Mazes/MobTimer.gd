extends Timer

var scene = load("res://GD_Project/Enemies/Enemy1.tscn")
var scene_instance = scene.instance()

func _ready():
	start()

#func _process(delta):
#	pass


func _on_MobTimer_timeout():
	print("Hello?")
	scene_instance = scene.instance()
	get_node("../Enemy Path").add_child(scene_instance)
