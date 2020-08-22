# Tower-002 - "Piercing Model"

extends StaticBody2D


onready var attackRange = $AttackRange 
# importing targets from the range collider, and storing in a list
var enemiesInRange = []

# Took these triggers out of the physics process and it fixed the "pause after death" problem
var targetAcquired = null
var targetLost = null
func _on_AttackRange_body_entered(body):
	#print("Enemy sighted!")
	enemiesInRange.append(body)
func _on_AttackRange_body_exited(body):
	#print("Enemy out of range.")
	enemiesInRange.erase(body)


func _physics_process(delta):
	pass
