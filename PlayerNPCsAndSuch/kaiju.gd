extends CharacterBody2D

const SPEED = 300.0


func _physics_process(delta):
	var direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up"))

	velocity = direction * SPEED
	
	move_and_slide()
