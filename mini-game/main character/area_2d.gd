extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	area_entered.connect( AreaEntered )
	pass # Replace with function body.
	
func AreaEntered( a : Area2D) -> void:
	if a is Area2D:
		print("detect")
	pass
