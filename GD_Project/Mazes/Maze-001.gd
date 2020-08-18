extends Node2D

var health = 10
signal gameOver
#signal updateHealth(currentHealth)

onready var healthBar = $"HealthGUI"

func _ready():
#	emit_signal("updateHealth", health)
	healthBar.setHealth(health)

func _on_Area2D_body_entered(body):
	body.get_parent().queue_free()
	$MobTimer.remove_mob()
	health -= 1
	healthBar.decrementHealth()
	if health == 0:
		emit_signal("gameOver")
		$MobTimer.stop_mobs()
		$MarginContainer.show_end_message(true)

