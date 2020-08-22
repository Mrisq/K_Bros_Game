# Projectile-001.gd "Base Model"

extends RigidBody2D


export var projectileSpeed: int = 250
export var projectileRange: int = 55
export var damage: 			int = 1

onready var hitbox = $Hitbox


func _ready():
	pass

func _on_Hitbox_body_entered(body):
	body.get_parent().take_damage(damage)
	queue_free()  # Presumably the projectile won't be destroyed
					# before the enemy has registered the damage...

func _physics_process(delta):
	# This section will destroy the projectile when it's reached it's range limit
	var distanceFromCenter = get_parent().global_position.distance_to(global_position)
	if distanceFromCenter > projectileRange:
		queue_free()

