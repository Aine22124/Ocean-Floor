extends CharacterBody2D
@export var speed = 200


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite2D.flip_h = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#movement
	if Input.is_action_pressed("player_down"):
		velocity.y = speed
	if Input.is_action_pressed("player_up"):
		velocity.y = - speed
	if Input.is_action_pressed("player_left"):
		velocity.x = - speed 
		$Sprite2D.flip_h = true
	if Input.is_action_pressed("player_right"):
		velocity.x = speed
		$Sprite2D.flip_h = false

	move_and_slide()
