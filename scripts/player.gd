extends CharacterBody2D
@export var speed = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#movement
	if Input.is_action_pressed("player_down"):
		velocity.y = speed
	if Input.is_action_pressed("player_up"):
		velocity.y = - speed
	if Input.is_action_pressed("player_left"):
		velocity.x = - speed 
	if Input.is_action_pressed("player_right"):
		velocity.x = speed

	move_and_slide()
