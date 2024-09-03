extends Area2D
signal bubble_popped


func _on_body_entered(body):
	if body.name == "player":
		#bubble has been touched, emit signal and then remove coin
		bubble_popped.emit()
		queue_free()
