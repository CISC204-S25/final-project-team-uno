extends Node2D

@export var platform: PackedScene
@export var MouseCollider: Area2D

var target = global_position
var NoCreation: bool = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#pass
	
	print(NoCreation)
	
	_platformcloning()
	_implementCollider()

func _platformcloning():
	if (Input.is_action_just_pressed("left_click")) && (NoCreation == false):
		var clonedPlatform = platform.instantiate() #sets platform (scene) to its 
		target = get_global_mouse_position() #target is set to the mouse's position
		clonedPlatform.position = target #sets the created platform to that position with a left_click
		add_child(clonedPlatform)

func _implementCollider():
	target = get_global_mouse_position()
	MouseCollider.position = target



func _on_no_creation_area_area_entered(_area):
	NoCreation = true

func _on_no_creation_area_area_exited(_area):
	NoCreation = false
