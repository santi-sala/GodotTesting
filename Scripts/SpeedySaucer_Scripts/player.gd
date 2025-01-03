extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
#	apply_impulse(Vector2(30, 50))
	pass
func _process(delta: float) -> void:
	print(Engine.get_frames_per_second())
#	apply_force(Vector2(10,20))
	

func _physics_process(delta: float) -> void:
	apply_force(Vector2(25,0))
