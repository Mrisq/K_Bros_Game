extends Button


func _gui_input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		get_tree().change_scene("res://GD_Project/Main Menu GUI/MainMenu.tscn")
