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



func _on_finaldoor_door_entered():
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")


func _on_bubbles_bubble_popped():
	var timer = $CanvasLayer/oxgyen_timer
	timer.add_time(10)
