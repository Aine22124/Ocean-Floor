extends Node2D

@onready var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	#once time runs out start level again
	get_tree().reload_current_scene()


func _on_coin_area_entered(area):
	#touch the coin add to points and remove coin
	print("done")
	score = score + 1
