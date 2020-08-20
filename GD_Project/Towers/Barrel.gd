extends KinematicBody2D


export (int) var rotationSpeed = 1.5 # how fast the turret will turn

# Load the projectile scene so it can be instanced
var projectileScene = load("res://GD_Project/Towers/Projectiles/Projectile-001.tscn")


var rotation_dir = 0 # natural state is no rotation
onready var targetList = get_parent().enemiesInRange # access the enemies list

# These work to limit the firing rate
var elapsed_time = 0
var firingRate = 1.0

func _physics_process(delta):
	elapsed_time += delta
	
	
	if targetList and elapsed_time >= firingRate:
		elapsed_time = 0
		var target = targetList[0] # identify the leading enemy
		var targetPosition = target.global_position # identify where it is
		look_at(targetPosition) # look at it. LOOK AT IT!
		# now the projectiles
		var projectileInstance = projectileScene.instance()
		projectileInstance.position = position
		projectileInstance.rotation_degrees = rotation_degrees
		projectileInstance.apply_impulse(Vector2(), Vector2(projectileInstance.speed, 0).rotated(rotation))
		get_parent().add_child(projectileInstance)


