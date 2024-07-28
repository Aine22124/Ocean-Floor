extends Node2D

@onready var Autoload.score = score
var points = score


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


func _on_coin_2_coin_picked_up():
	#add points!
	points = points + 1
	print(points)


func _on_coin_3_coin_picked_up():
	#add points!
	points = points + 1
	print(points)


func _on_coin_4_coin_picked_up():
	#add points!
	points = points + 1
	print(points)


func _on_coin_5_coin_picked_up():
	#add points!
	points = points + 1
	print(points)


func _on_coin_6_coin_picked_up():
	#add points!
	points = points + 1
	print(points)


func _on_coin_7_coin_picked_up():
	#add points!
	points = points + 1
	print(points)


func _on_coin_8_coin_picked_up():
	#add points!
	points = points + 1
	print(points)
