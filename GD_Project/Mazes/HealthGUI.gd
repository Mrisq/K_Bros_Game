extends Control

func _ready():
	pass # Replace with function body.

#func update_health(currentHealth, maxHealth):
#	$Label.text = currentHealth


func _on_Maze001_updateHealth(currentHealth):
	$Label.text = String(currentHealth)
