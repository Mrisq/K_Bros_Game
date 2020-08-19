extends Area2D
# This will determine when an enemy has come into range of the tower

# It does not have it's own drawn shape as towers may have different size/shape
# Though I would like to eventually figure out how to export the var
#  for the diameter of a drawn shape, so it can be modified externally...
var targetAcquired = null
var targetLost = null

func _on_AttackRange_body_entered(body):
	#print("Enemy sighted!")
	targetAcquired = body

func _on_AttackRange_body_exited(body):
	#print("Enemy out of range.")
	targetLost = body

