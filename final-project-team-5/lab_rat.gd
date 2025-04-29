extends CharacterBody2D


@export var speed = 300.0
@export var jumpVelocity = -400.0
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	
	#inputs only affect x axis
	velocity.x = Input.get_axis("move_left", "move_right") * speed
	
	move_and_slide()
	
	#only jump when on the ground
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = jumpVelocity
