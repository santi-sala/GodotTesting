extends CharacterBody2D
var speed = 250

func _physics_process(delta: float) -> void:
	velocity = Vector2(0, 0)
	if Input.is_action_pressed("alien_attack_right"):
		velocity.x = speed
	if Input.is_action_pressed("alien_attack_left"):
		velocity.x = -speed
	if Input.is_action_pressed("alien_attack_up"):
		velocity.y = -speed
	if Input.is_action_pressed("alien_attack_down"):
		velocity.y = speed
		
	move_and_slide()
	
