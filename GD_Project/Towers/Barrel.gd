extends KinematicBody2D


export (int) var rotationSpeed = 1.5 # how fast the turret will turn

var rotation_dir = 0 # natural state is no rotation
onready var targetList = get_parent().enemiesInRange # access the enemies list


func _physics_process(delta):
		if targetList:
			var target = targetList[0] # identify the leading enemy
			var targetPosition = target.global_position # identify where it is
			look_at(targetPosition) # look at it. LOOK AT IT!

