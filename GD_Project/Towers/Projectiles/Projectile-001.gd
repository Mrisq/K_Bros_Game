# Projectile-001.gd

extends RigidBody2D


export var speed = 100

onready var hitbox = $Hitbox


func _ready():
	pass


# This will take the variables and turn it into a movement speed and direction 
# for the projectile
func _physics_process(delta):
	pass

