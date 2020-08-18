extends CenterContainer

func _ready():
	modulate = Color(0.7, 0.2, 0.3) # Tint the hearts red

# update the heart images to reflect the current health
func update_image(health):
	
	if health % 2 == 0: # if health is even the heart is going from half full to empty
		$Half.visible = false
		$Empty.visible = true
	else: # if health is odd the heart is going from full to half full
		$Full.visible = false
		$Half.visible = true
