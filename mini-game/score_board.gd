extends CanvasLayer

var totalscore = Global.score

func _ready() -> void:
	$Score.text = "Total Score: " + str(totalscore)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
