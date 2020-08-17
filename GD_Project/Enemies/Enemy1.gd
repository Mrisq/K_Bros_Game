extends PathFollow2D

# to determine how much damage this enemy can take, exported for external modification
export var hitpoints = 3

# connecting to the hurtbox to receive the signals later
onready var hurtbox = $HurtBox


func _ready():
	pass 

func _process(delta):
	offset += 2


# signal received from the hurtbox that a projectile hitbox has entered it
func _on_HurtBox_area_entered(area):
	hitpoints -= area.damage
	
	
