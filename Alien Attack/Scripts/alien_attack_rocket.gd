extends Area2D
	
@export var speed = 500

@onready var rocket_screen_notifier = $VisibleOnScreenNotifier2D

func _ready() -> void:
	rocket_screen_notifier.connect("screen_exited", _on_rocket_exited_screen)

func _physics_process(delta: float) -> void:
	global_position.x += speed * delta
	
func _on_rocket_exited_screen():
	queue_free()
