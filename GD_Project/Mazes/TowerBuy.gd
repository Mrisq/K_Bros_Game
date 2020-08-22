extends Button


signal open_buy_menu


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _gui_input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		emit_signal("open_buy_menu")
