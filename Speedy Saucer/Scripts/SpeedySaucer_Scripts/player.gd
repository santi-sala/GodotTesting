extends RigidBody2D
var my_string = "Sup"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
#	apply_impulse(Vector2(30, 50))
	pass
		 
	
func _process(delta: float) -> void:
	#print(Engine.get_frames_per_second())
#	apply_force(Vector2(10,20))
	pass
	
var force = 1000
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("move_right"):
		apply_force(Vector2(force,0))
	if Input.is_action_pressed("move_left"):
		apply_force(Vector2(-force,0))
	if Input.is_action_pressed("move_up"):
		apply_force(Vector2(0,-force))
	if Input.is_action_pressed("move_down"):
		apply_force(Vector2(0,force))
	if Input.is_action_just_pressed("reset_position"):
		print(add(3,5))
		transform
		
func add(number_one, number_two ):
	return number_one + number_two
