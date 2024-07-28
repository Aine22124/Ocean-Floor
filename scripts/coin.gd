extends Area2D

signal coin_picked_up



func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	#coin has been touched, emit signal and then remove coin
	coin_picked_up.emit()
	queue_free()
	
