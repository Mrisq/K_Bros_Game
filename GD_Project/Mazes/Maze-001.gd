extends Node2D

var life = 10
signal updateHealth(currentHealth)

func _ready():
	emit_signal("updateHealth", life)

func _on_Area2D_body_entered(body):
	body.get_parent().queue_free()
	life -= 1
	emit_signal("updateHealth", life)
