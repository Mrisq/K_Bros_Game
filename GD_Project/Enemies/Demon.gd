extends PathFollow2D

# The mobs' speed (in pixels I think...?)
var speed
# the damage that this mob does to health when it gets to the end
export var damage: int 
# to determine how much damage this enemy can take, exported for external modification
export var hitpoints: int

# The index of this instance in the all_mobs array
var all_mobs_index

# connecting to the hurtbox to receive the signals later
onready var hurtbox = $HurtBox

var randy = RandomNumberGenerator.new()

func _ready():
	randy.randomize()
	speed = randy.randi_range(18,32) # give this mob a random speed

func _process(delta): # delta is the time since the last frame. It's a kind of 
						# equalizer so that the game feels like it flows 
						# smooth, regardless of actual framerate variance.
	offset += speed * delta # Move the mob. Offset refers to how far along the path the mob is

# signal received from the hurtbox that a projectile hitbox has entered it
func _on_HurtBox_area_entered(area):
	hitpoints -= area.damage

func take_damage(dmg):
	hitpoints -= dmg
	$TakeDamage.play()
	if hitpoints <= 0:
		var current_text = $"../../Maze-GUI/Margins/HBox/CoinMargins/MarginContainer/CoinsRow/Coins".text
		var new_text = int(current_text) + 1
		$"../../Maze-GUI/Margins/HBox/CoinMargins/MarginContainer/CoinsRow/Coins".text = str(new_text)
		remove_self()

# set the speed variable. 
# currently only used to stop the mobs at the end
func set_speed(s):
	speed = s

# sets this mob's index in the all_mobs array
func set_index(i):
	all_mobs_index = i

# gets this mob's index in the all_mobs array
func get_index():
	return all_mobs_index

# Tell the timer to remove this mob from the mobs array
# and then despawn 
func remove_self():
	$"../../MobTimer".remove_mob(all_mobs_index)
	queue_free()
