extends Area2D



func _on_body_exited(body: PhysicsBody2D):
	get_tree().change_scene_to_file("res://scenes/title_screen_levels.tscn")
	
