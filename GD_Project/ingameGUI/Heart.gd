extends CenterContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func update_image(health):
	if health % 2 == 0: #even
		$Half.visible = false
		$Empty.visible = true
	else: #odd
		$Full.visible = false
		$Half.visible = true
