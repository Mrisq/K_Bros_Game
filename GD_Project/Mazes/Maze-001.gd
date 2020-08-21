extends Node2D

var health = 10 # Player health

onready var healthBar = $"GUI" # The health bar GUI node

func _ready():
	healthBar.setHealth(health) # Give the Health bar our starting health

# This function runs when a physics body enters the area2d which, now that
# I think of it should have been given a name other than "Area2D"
func _on_Area2D_body_entered(body):
	
	var dmg = body.get_parent().damage
	health -= dmg # Reduce player health by the mob's damage
	body.get_parent().remove_self() # Remove the body's instance from the game
	healthBar.decreaseHealth(dmg) # Tell the health bar to update
	
	if health <= 0: # if health has now run out
		$MobTimer.stop_mobs() # Tell the timer to stop all of the remaining mobs' movement
		$EndMessage.show_end_message(true) # Show the end message

