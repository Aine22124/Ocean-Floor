extends Node


@onready var label = $label
@onready var timer = $label/timer
signal oxygen_0

func _ready():
	timer.set_wait_time(Autoload.TimeDuration)
	timer.start

func time_left_to_live():
	var time_left = timer.get_time_left()
	var minute = floor(time_left / 60)
	var second = int(time_left) % 60
	return [minute, second]

func _process(delta):
	label.text = "%02d:%02d" % time_left_to_live()


func _on_timer_timeout():
	oxygen_0.emit()
