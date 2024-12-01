extends RichTextLabel

@export var target_score: int = 20  # The score required to end the game
var game_over: bool = false

func _ready() -> void:
	# Enable BBCode for RichTextLabel
	self.bbcode_enabled = true

func _process(delta: float) -> void:
	# Update the label with colored score dynamically
	self.bbcode_text = "[color=black] Total Score: " + str(Global.score) + "[/color]"

	# Check if the target score is reached and the game is not already over
	if not game_over and Global.score >= target_score:
		end_game()

func end_game() -> void:
	game_over = true
	print("Mission Success")
	get_tree().paused = true  # Pause the game
	# Optionally, show a game-over message or transition to another scene
