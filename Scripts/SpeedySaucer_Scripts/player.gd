extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	test(my_number)

var my_number = (2+3)*5

func test(number):
	print("k pasa maaaan!")
	print(str(number * 2))
	print("2 + 2 is = " + str(2+2))
