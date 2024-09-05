extends Node

@onready var label = $oxygen
@onready var timer = $oxygen/timer
#@onready Autoload = "res://scripts/Autoload.gd"
signal oxygen_0

func _ready():
	$oxygen/timer.wait_time = 70
	timer.start()

func time_left_to_live():
	var time_left = timer.get_time_left()
	var minute = floor(time_left / 60)
	var second = int(time_left) % 60
	return [minute, second]

func _process(delta):
	label.text = "Oxygen:  " + "%02d:%02d" % time_left_to_live()


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/dead_screen.tscn")
	
	
func set_coins(numcoins):
	$points.text = "Coins: " + str(numcoins)
	


func add_time(amount):
	var timer : Timer = $oxygen/timer
	print(timer.wait_time)
	timer.start(timer.time_left + amount)
	

func remove_time(amount):
	var timer : Timer = $oxygen/timer
	print(timer.wait_time)
	timer.start(timer.timer_left + amount)


#func _input(event):
	#var time : Timer = $oxygen/timer
	#if event(timer.timer_left == 0)
	#$oxygen.add_color_override("default_color", Color(0.856, 0, 0))
