extends PopupPanel

func _ready():
	pass


#if get_node(your_modal).is_visible():
#   get_node(your_modal).hide()


func _on_TowerBuyButton_open_buy_menu():
	popup_centered(Vector2(320-32,240-32))

func _on_PopupCloseButton_close_buy_menu():
   hide()
