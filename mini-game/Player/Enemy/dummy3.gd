class_name Dummy3 extends Node2D

@export var fall_speed : float = 100  # Constant fall speed
var velocity = Vector2()  # Vector to hold velocity

func _ready() -> void:
	velocity.y = fall_speed
	$Hitbox.Damaged.connect(TakeDamage)
	pass # Replace with function body.

func TakeDamage(damage: int) -> void:
	$AnimatedSprite2D.play("dead")
	$AnimatedSprite2D.animation_finished.connect(func(): 
		queue_free())
	
func _physics_process(delta):
	# Move the enemy down at a constant speed
	position.y += fall_speed * delta
