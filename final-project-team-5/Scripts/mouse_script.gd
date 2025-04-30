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
		var clonedPlatform = platform.instantiate()
		target = get_global_mouse_position()
		clonedPlatform.position = target
		add_child(clonedPlatform)
