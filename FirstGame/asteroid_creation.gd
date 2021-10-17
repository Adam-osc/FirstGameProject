extends Node2D


# Declare member variables here. Examples:
var asteroid_scene = load("res://Asteroid.tscn")
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	
	for i in range(10):
		var asteroid = asteroid_scene.instance()
		var asteroid_position = Vector2((rng.randi_range(1, 8) * 64) - 32, (-i * 100))
		asteroid.position = asteroid_position
		add_child(asteroid)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	
	pass # Replace with function body.
