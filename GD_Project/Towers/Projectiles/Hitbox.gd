extends Area2D
# soley for determining if/when a projectile hits an enemy and the damage

# this does not have a drawn collision shape, as different projectiles may
# vary in size/shape

# default damage, exported to allow modification
export var damage = 1

func _on_Hitbox_body_entered(body):
	queue_free()  # Presumably the projectile won't be destroyed
					# before the enemy has registered the damage...

