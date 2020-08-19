extends KinematicBody2D


export (int) var rotationSpeed = 1.5 # how fast the turret will turn

var rotation_dir = 0 # natural state is no rotation
onready var targetList = get_parent().enemiesInRange # access the enemies list


func _physics_process(delta):
	if targetList:
		var target = targetList[0] # identify the leading enemy
		var targetPosition = global_position.direction_to(target.global_position)
			# relative position of target from tower
		print(targetPosition)
		# Now I just have to rotate the tower towards that position...
		#rotation += rotation_dir * rotationSpeed * delta


