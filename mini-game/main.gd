extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Script is ready")  # This confirms that the script is loaded and executed.
	custom_print()  # Call custom_print() to print "test".

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Uncomment this line to call custom_print() every frame (for testing purposes).
	custom_print()

# This function prints "test" when called.
func custom_print() -> void:
	print("test")
