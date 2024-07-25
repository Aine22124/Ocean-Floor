extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_lever_body_entered(body):
	hide()




func _on_lever_body_exited(body):
	hide()
