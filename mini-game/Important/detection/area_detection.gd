extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Connect the 'area_entered' signal to the 'AreaEntered' function.
	self.area_entered.connect(AreaEntered)

# Function called when an Area2D enters the detection area.
func AreaEntered(a: Area2D) -> void:
	if a is Area2D:
		print("Game Over")
		# Pause the game when the area is detected.
		get_tree().paused = true
