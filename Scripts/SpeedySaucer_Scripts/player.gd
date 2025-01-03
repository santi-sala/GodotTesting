extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	test()

var my_number
func test():
	my_number = (2+3)*5
	print("k pasa maaaan!")
	print(str(my_number))
	print("2 + 2 is = " + str(2+2))
