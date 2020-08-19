extends StaticBody2D


onready var attackRange = $AttackRange

var enemiesInRange = []

func _physics_process(delta):
	if attackRange.targetAcquired:
		enemiesInRange.append(attackRange.targetAcquired)
		attackRange.targetAcquired = null
		print(enemiesInRange)
	if attackRange.targetLost:
		enemiesInRange.erase(attackRange.targetLost)
		attackRange.targetLost = null
		print(enemiesInRange)
	

