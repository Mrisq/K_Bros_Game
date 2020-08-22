extends Area2D

# this script is for generic effects upon the enemy if/when it gets hurt
# the hurtbox does not have it's own collision shape drawn, as different enemy
# types may have different shapes/sizes.

func _on_HurtBox_body_entered(body):
	print("mob hit 1")
	pass # Replace with function body.
