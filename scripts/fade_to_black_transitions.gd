extends CanvasLayer

#signal on_trasition_finished
#@onready var colour_rect = $ColorRect
#@onready var animation_player = $AnimationPlayer

signal transitioned
signal transition

func _read():
	emit_signal("transition")
	$ColorRect/AnimationPlayer.set_autoplay("fade_to_black")

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "fade_to_black":
		emit_signal("transitioned")


func _on_transitioned():
	$ColorRect/AnimationPlayer.play("fade_to_normal")

func _on_transition():
	$ColorRect/AnimationPlayer.play("fade_to_black")



#	func _read():
#	colour_rect.visible = false
#	animation_player.animation_finished.connect(_on_animation_finished)


#	func _on_animation_finished(animation_name):
#	if animation_name == "fade_to_black":
#		on_trasition_finished.emit()
#		animation_player.play("fade_to_normal")
#	elif animation_name == "fade_to_normal":
#		colour_rect.visible = false

#	func transition():
#	colour_rect.visible = true
#	animation_player.play("fade_to_black")

