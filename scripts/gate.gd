extends StaticBody2D

@onready var collision_shape_2d = $CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready():
	show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_lever_body_entered(body):
	hide()
	collision_shape_2d.set_disabled(true)
	print(collision_shape_2d.is_disabled())

