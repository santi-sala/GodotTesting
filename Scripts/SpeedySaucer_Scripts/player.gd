extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	test()

var my_number = 10
func test():
	print("k pasa maaaan!")
	print(str(my_number))
	
