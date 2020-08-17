extends Button

func _ready():
	pass # Replace with function body.

func _gui_input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		get_tree().change_scene("res://GD_Project/Mazes/Maze-002.tscn")
