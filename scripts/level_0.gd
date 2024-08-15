extends Node2D

var points = int(0)

#@onready var Autoload score = points


func _on_coin_coin_picked_up():
	#add points!
	points = points + 1
	$CanvasLayer/oxgyen_timer.set_coins(points)


func _on_treasure_chest_treasure_chest_opened():
	#add points!
	points = points + 5
	$CanvasLayer/oxgyen_timer.set_coins(points)

