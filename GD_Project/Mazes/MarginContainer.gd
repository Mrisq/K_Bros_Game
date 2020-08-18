extends MarginContainer

func _ready():
	show_end_message(false) # Don't show the end message at the start

# Decide whether to show the end message. Show is a boolean
# True shows the "You Died" message, and false hides it
func show_end_message(show): 
	$"CenterContainer/YouDied".visible = show
