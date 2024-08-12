extends Node


@onready var label = $oxygen
@onready var timer = $oxygen/timer
#@onready Autoload = "res://scripts/Autoload.gd"
signal oxygen_0

func _ready():
	$oxygen/timer.set_wait_time(Autoload.TimeDuration)
	timer.start

func time_left_to_live():
	var time_left = timer.get_time_left()
	var minute = floor(time_left / 60)
	var second = int(time_left) % 60
	return [minute, second]

func _process(delta):
	label.text = "%02d:%02d" % time_left_to_live()


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/dead_screen.tscn")
	
	
func set_coins(numcoins):
	$points.text = "Coins: " + str(numcoins)
