extends CenterContainer

func _ready():
	modulate = Color(0.7, 0.2, 0.3) # Tint the hearts red

# update the heart images to reflect the current health
func update_image(health, idx):
	$Full.visible = false
	$Half.visible = false
	$Empty.visible = false
	
	if idx*2 <= health:
		$Full.visible = true
	if idx*2-1 == health:
		$Half.visible = true
	if idx*2-1 >= health:
		$Empty.visible = true
	
	
