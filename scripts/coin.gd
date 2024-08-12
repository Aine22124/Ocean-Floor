extends Area2D

signal coin_picked_up



func _on_body_entered(body):
	if body.name == "player":
		#coin has been touched, emit signal and then remove coin
		coin_picked_up.emit()
		queue_free()
