extends Area2D

signal treasure_chest_opened


func _on_body_entered(body):
	if body.name == "player":
		#treasure chest touched, emit signal and then remove chest
		treasure_chest_opened.emit()
		queue_free()
