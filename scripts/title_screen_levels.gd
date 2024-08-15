extends Node


func _on_level_0_button_pressed():
	#press the level 0 button to change the scene to level 0
	get_tree().change_scene_to_file("res://scenes/level_0.tscn")

func _on_level_1_button_pressed():
	#press the level 1 button to change the scene to level 1
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")

func _on_level_2_button_pressed():
	#press the level 2 button to change the scene to level 2
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")

func _on_level_3_button_pressed():
	#press the level 3 button to change the scene to level 3
	get_tree().change_scene_to_file("res://scenes/level_3.tscn")
