extends Area2D

var entered = false



func _on_body_entered(body: PhysicsBody2D):
	entered = true


func _on_body_exited(body):
	entered = false
	
	

#touch the area and the scene changes to level 2
func _process(delta):
	if entered == true:
		get_tree().change_scene_to_file("res://scenes/title_screen_levels.tscn")
