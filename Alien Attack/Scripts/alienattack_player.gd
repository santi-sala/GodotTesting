extends CharacterBody2D
var speed = 250


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("alien_attack_shoot"):
		shoot()

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
	# this numbers are from the window size in projects setting -20
	var window_size = get_viewport_rect().size
	#if global_position.x < 20:
		#global_position.x = 20
	#if global_position.x > window_size.x - 20:
		#global_position.x = window_size.x - 20
	#if global_position.y < 20:
		#global_position.y = 20
	#if global_position.y > window_size.y - 20:
		#global_position.y = window_size.y - 20
		
	#global_position.x = clampf(global_position.x, 20, window_size.x - 20)	
	#global_position.y = clampf(global_position.y, 20, window_size.y - 20)
	
	global_position = global_position.clamp(Vector2(20,20), Vector2(window_size.x - 20, window_size.y - 20))
	
func shoot():
	var rocket_scene = load("res://Alien Attack/Scenes/alien_attack_rocket.tscn")
	var rocket_instance = rocket_scene.instantiate()
	add_child(rocket_instance)
	
	
