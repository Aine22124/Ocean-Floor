extends Area2D
signal leverpulled


func _on_body_entered(body):
	if body.name == "player":
		#lever has been pulled, emit signal and change sprite
		$AnimatedSprite2D.set_animation("R-pull")
		leverpulled.emit()
