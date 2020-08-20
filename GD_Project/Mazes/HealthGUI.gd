extends Control

# Load the heart scene
var heart = load("res://GD_Project/ingameGUI/Heart.tscn")

var heart_instance # Heart instance

var health #local healh variable

var hearts_list = [] # The list of hearts

func _ready():
	$Label.visible = false

# Function for setting the player's health
func setHealth(h):
	health = h # set the local health variable
	
	# This adds the correct number of hearts to the screen based on
	# the starting health
	for _i in range(health/2): # Each heart represents 2 health
		heart_instance = heart.instance() # Instance a heart scene
		$"HealthRow".add_child(heart_instance) # add the instance to the row container
		hearts_list.push_back(heart_instance) # add the instance to the list of hearts
	
#	# This is a text label that displays the current health
#	#I'll keep this in case we need to see the score onscreen
	$Label.text = String(health)

# Decrease the health by 1
func decreaseHealth(hits):
	health -= hits
	
	$Label.text = String(health)
	
	var idx = 0
	for heart_img in hearts_list:
		heart_img.update_image(health, idx+1)
		idx += 1
	
