extends CharacterBody2D


@export var speed = 300.0
@export var jumpVelocity = -400.0
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
@export_range(0.0, 1.0) var friction = 0.1
@export_range(0.0 , 1.0) var acceleration = 0.25


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	
	#inputs only affect x axis
	var dir = Input.get_axis("move_left", "move_right")
	
	#applies driction and acceleration
	if dir != 0:
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
	else:
		velocity.x = lerp(velocity.x, 0.0, friction)

	
	move_and_slide()
	
	#only jump when on the ground
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = jumpVelocity
