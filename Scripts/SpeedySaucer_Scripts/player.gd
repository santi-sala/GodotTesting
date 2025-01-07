extends RigidBody2D
var my_string = "Sup"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
#	apply_impulse(Vector2(30, 50))
	if my_string == "Sup":
		print("Sup triggered")
	elif my_string == "K pasa":
		print(" K pasa triggered")
	else:
		print("Wrong trigger")
		 
	
func _process(delta: float) -> void:
	#print(Engine.get_frames_per_second())
#	apply_force(Vector2(10,20))
	pass
	

func _physics_process(delta: float) -> void:
	apply_force(Vector2(25,0))
