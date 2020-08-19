extends KinematicBody2D


export (int) var rotationSpeed = 1.5

var rotation_dir = 0
var target = null


func _physics_process(delta):
	# I need to access the enemiesInRange list, in the parent Tower script,
		# and if there is a target in the first slot, 
		# pass it's direction_to into the rotation_dir
	#print("aiming...")
	#var target = get_parent().enemiesInRange[0]
	#var rotation_dir = global_position.direction_to(get_parent().enemiesInRange[0])
	#rotation += rotation_dir * rotationSpeed * delta
	pass

