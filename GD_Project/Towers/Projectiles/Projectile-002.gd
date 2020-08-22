# Projectile-002.gd "Piercing Model"

extends RigidBody2D


export var projectileSpeed: int
export var projectileRange: int
export var damage: 			int

onready var hitbox = $Hitbox


func _ready():
	pass

func _on_Hitbox_body_entered(body):
	body.get_parent().take_damage(damage)
	#queue_free()  # Piercing model does not disappear after hitting an enemy

func _physics_process(delta):
	# This section will destroy the projectile when it's reached it's range limit
	var distanceFromCenter = get_parent().global_position.distance_to(global_position)
	if distanceFromCenter > projectileRange:
		queue_free()

