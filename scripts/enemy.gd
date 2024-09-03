extends Node2D

@onready var path_follow : PathFollow2D = $Path2D/PathFollow2D
#will be speed in px per secound
@export var speed = 100
signal touched_pufferfish


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	path_follow.progress += speed * delta 



func _on_areapufferfish_body_entered(body):
	if body.name == "player":
		#pufferfish has been touched, emit signal
		touched_pufferfish.emit()
