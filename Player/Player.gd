extends CharacterBody2D

var movement_speed = 40.0

func _physics_process(delta): # physics process, every 60th of a frame this func will get called and processed
	movement()
	

func movement():
	# x_mov: get_action is a bool(0,1) so if right pressed and left the player has no change in x movement
	var x_mov = Input.get_action_strength("right")  - Input.get_action_strength("left")
	# same as x_mov but with y_mov
	var y_mov = Input.get_action_strength("down") - Input.get_action_strength("up")
	# Vector is a line on a graph so it gives the direction of the player
	var mov = Vector2(x_mov, y_mov)
	velocity = mov.normalized() * movement_speed # direction times the movementspeed
	move_and_slide() # godot func that moves or slides the player
