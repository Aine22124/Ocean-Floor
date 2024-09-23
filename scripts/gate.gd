extends StaticBody2D

@onready var collision_shape_2d = $CollisionShape2D



func _on_lever_leverpulled():
	queue_free()
	#hide()
	#collision_shape_2d.set_disabled(true)
	#print(collision_shape_2d.is_disabled)
