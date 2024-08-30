extends Area2D
signal leverpulled


func _on_body_entered(body):
	leverpulled.emit()
