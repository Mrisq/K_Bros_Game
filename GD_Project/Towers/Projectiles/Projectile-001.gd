# Projectile-001.gd

extends RigidBody2D


export var speed = 250
export var projectileRange = 55

onready var hitbox = $Hitbox


func _ready():
	pass


func _physics_process(delta):
	# This section will destroy the projectile when it's reached it's range limit
	var distanceFromCenter = get_parent().global_position.distance_to(global_position)
	if distanceFromCenter > projectileRange:
		queue_free()

