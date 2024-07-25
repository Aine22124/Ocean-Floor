extends Area2D

signal treasure_chest_opened

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	#treasure chest touched, emit signal and then remove chest
	treasure_chest_opened.emit()
	queue_free()
	
