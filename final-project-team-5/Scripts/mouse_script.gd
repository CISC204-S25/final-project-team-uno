extends Node2D

@export var platform: PackedScene

var target = global_position


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#pass
	
	_platformcloning()

func _platformcloning():
	if Input.is_action_just_pressed("left_click"):
		var clonedPlatform = platform.instantiate() #sets platform (scene) to its 
		target = get_global_mouse_position() #target is set to the mouse's position
		clonedPlatform.position = target #sets the created platform to that position with a left_click
		add_child(clonedPlatform)
