extends Node

var TimeDuration: int = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_oxgyen_timer_oxygen_0():
	get_tree().change_scene_to_file("res://scenes/title_screen_levels.tscn")
