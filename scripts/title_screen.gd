extends Node



func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://scenes/title_screen_levels.tscn")



func _on_instructions_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game_instructions.tscn")
