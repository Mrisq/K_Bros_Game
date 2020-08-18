extends Control

var heart = load("res://GD_Project/ingameGUI/Heart.tscn")
var heart_instance

var health

var hearts_list = []

func _ready():
	$Label.visible = false

#func update_health(currentHealth, maxHealth):
#	$Label.text = currentHealth


#func _on_Maze001_updateHealth(currentHealth):
#	health = currentHealth
#	$Label.text = String(currentHealth)

func setHealth(h):
	health = h
#	$Label.text = String(h)
	for h in range(health/2):
		heart_instance = heart.instance()
		$"HealthRow".add_child(heart_instance)
		hearts_list.push_back(heart_instance)


func decrementHealth():
	health -= 1
#	$Label.text = String(health)
	hearts_list[health/2].update_image(health)
#	if health % 2 == 0: #even
#		hearts_list[health/2].Full.visible = false
#		hearts_list[health/2].Half.visible = true
#	else: #odd
#		hearts_list[health/2].Half.visible = false
#		hearts_list[health/2].Empty.visible = true
