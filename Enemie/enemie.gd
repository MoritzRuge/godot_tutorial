extends CharacterBody2D


@export var movement_speed = 20.0

@onready var Player = get_tree().get_first_node_in_group("Player")

# direction func for the enemy to find the player
func _physics_process(_delta):
	# get the global position of the first note in the Group Player (which the Player obj is part of)
	var direction = global_position.direction_to(Player.global_position)
	velocity = direction * movement_speed
	move_and_slide()
