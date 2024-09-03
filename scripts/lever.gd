extends Area2D
signal leverpulled


func _on_body_entered(body):
	if body.name == "player":
		#lever has been pulled, emit signal
		leverpulled.emit()
