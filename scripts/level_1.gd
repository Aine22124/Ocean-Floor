extends Node2D

 var points: int = Autoload.score

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_coin_coin_picked_up():
	#add points!
	points = points + 1
	print(points)


func _on_treasure_chest_treasure_chest_opened():
	#add points!
	points = points + 5
	print(points)


func _on_treasure_chest_2_treasure_chest_opened():
		#add points!
	points = points + 5
	print(points)
