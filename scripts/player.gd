extends CharacterBody2D


@export var speed = 200
var PlayerDirection: Vector2 = Vector2.ZERO


func _ready():
	pass

func get_input():
	var input_dir = Input.get_vector("player_left", "player_right", "player_up", "player_down")
	velocity = input_dir * speed
	self.set_rotation( input_dir.angle())

func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
##movement
	#if Input.is_action_pressed("player_down"):
		#PlayerDirection.y = speed * delta
	#if Input.is_action_pressed("player_up"):
		#PlayerDirection.y = -speed * delta
	#if Input.is_action_pressed("player_left"):
		#PlayerDirection.x = -speed * delta
		#$Sprite2D.flip_h = true
	#if Input.is_action_pressed("player_right"):
		#PlayerDirection.x = speed * delta
		#$Sprite2D.flip_h = false
		
	#velocity.y = PlayerDirection.y
	#velocity.x = PlayerDirection.x
	
	#move_and_slide()
