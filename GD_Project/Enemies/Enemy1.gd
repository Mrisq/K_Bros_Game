extends PathFollow2D

# to determine how much damage this enemy can take, exported for external modification
export var hitpoints = 3

# The index of this instance in the all_mobs array
var all_mobs_index

# connecting to the hurtbox to receive the signals later
onready var hurtbox = $HurtBox

# The mobs' speed (in pixels I think...)
var speed = 2

func _ready():
	pass 

func _process(delta):
	offset += speed # Move the mob. Offset refers to how far along the path the mob is

# signal received from the hurtbox that a projectile hitbox has entered it
func _on_HurtBox_area_entered(area):
	hitpoints -= area.damage

# set the speed variable. 
# currently only used to stop the mobs at the end
func set_speed(s):
	speed = s
