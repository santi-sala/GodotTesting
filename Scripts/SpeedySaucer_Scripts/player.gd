extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	apply_impulse(Vector2(30, 50))
