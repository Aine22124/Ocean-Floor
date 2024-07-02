extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_level_1_button_pressed():
	#press the level 1 button to change the scene to level 1
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")



func _on_level_2_button_pressed():
	#press the level 2 button to change the scene to level 2
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")
