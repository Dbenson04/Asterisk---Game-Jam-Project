extends CharacterBody2D


const playerSPEED = 130.0 # speed of player's movement
	
func _process(delta):
	move_player(delta)

func move_player(delta):

	# Gets input direction for moving LEFT and RIGHT
	var x_direction = Input.get_axis("move_left", "move_right")
	if x_direction:
		velocity.x = x_direction * playerSPEED
	else:
		velocity.x = move_toward(velocity.x, 0, playerSPEED)
	
	# Gets input direction for moving UP and DOWN
	var y_direction = Input.get_axis("move_up", "move_down")
	if y_direction:
		velocity.y = y_direction * playerSPEED
	else:
		velocity.y = y_direction * playerSPEED

	move_and_slide()
	
