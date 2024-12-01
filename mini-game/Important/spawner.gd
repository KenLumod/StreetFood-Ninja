extends Area2D

@export var enemy_scenes = [
	preload("res://Player/Enemy/Dummy.tscn"),
	preload("res://Player/Enemy/Dummy2.tscn"),
	preload("res://Player/Enemy/Dummy3.tscn")
]
@export var spawn_interval: float = 2.0
var spawn_timer: Timer
var spawn_count: int = 0

func _ready():
	# Create timer
	spawn_timer = Timer.new()
	spawn_timer.wait_time = spawn_interval
	spawn_timer.one_shot = false
	spawn_timer.autostart = true
	
	# Connect timeout signal
	spawn_timer.timeout.connect(spawn_enemy)
	
	# Add timer to scene
	add_child(spawn_timer)
	
	# Spawn initial enemy
	print("Initial spawn setup")
	spawn_enemy()

func spawn_enemy():
	spawn_count += 1
	
	# Choose a random enemy scene from the list
	if enemy_scenes.size() > 0:
		var random_index = randi() % enemy_scenes.size()
		var enemy_scene = enemy_scenes[random_index]
		
		if enemy_scene:
			var enemy = enemy_scene.instantiate()
			
			# Randomize the x and y coordinates
			var random_x = randi_range(50, 1080)
			
			enemy.position = Vector2(random_x, 30)
			
			# Add the enemy to the scene
			if get_parent():
				get_parent().add_child.call_deferred(enemy)
			else:
				add_child(enemy)
