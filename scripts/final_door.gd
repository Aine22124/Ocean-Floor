extends Area2D
signal door_entered

func _on_body_entered(body: PhysicsBody2D):
	door_entered.emit()
	
