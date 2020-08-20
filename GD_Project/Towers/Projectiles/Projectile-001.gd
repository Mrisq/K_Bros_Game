# Projectile-001.gd

extends RigidBody2D


export var speed = 100

onready var hitbox = $Hitbox


func _ready():
	pass


# This will take the variables and turn it into a movement speed and direction 
# for the projectile
func _physics_process(delta):
	# finding the distance between the projectile and the tower... 
	# I believe to_global(position).x/y is getting the right coords for the projectile,
	# but I have yet to produce the correct coords for the tower...
	var distanceFromCenter = get_parent().global_position.distance_to(global_position)#= sqrt( pow((to_global(???).x - to_global(position).x),2) + pow((to_global(???).y - to_global(position).y),2) )
	if distanceFromCenter > 50: # for initial testing, I want to greatly limit
				# the distance of the projectiles...
		queue_free()

