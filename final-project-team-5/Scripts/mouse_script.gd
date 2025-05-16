extends Node2D
#Uses GlobalPlatformOrganizing

@export var platform: PackedScene
@export var MouseCollider: Area2D

@onready var DroneCursor = preload("res://Assets/Art/Players/gooberdrone.png")
@onready var DroneCursorSmall = preload("res://Assets/Art/Players/gooberdrone_small.png")
# ^ textures (or images) of the drone. Manually set it as custom cursor. ^

var target = global_position
var NoCreation: bool = false #Disables the ability to create platforms in certain areas...
	#...or parts of the game

var PlatformLimit: int

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	Input.set_custom_mouse_cursor(DroneCursorSmall, Input.CURSOR_ARROW, Vector2(125,65))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	PlatformLimit = GlobalPlatformOrganizing.PlatformLimit
	#pass
	#print(PlatformLimit)
	#print(NoCreation)
	ChangingDrone()

func _physics_process(_delta):
	_platformcloning()
	_implementCollider()

func _platformcloning():
	if (Input.is_action_just_pressed("left_click")) && (NoCreation == false) && (PlatformLimit >= 1):
		var clonedPlatform = platform.instantiate() #sets platform (scene) to its 
		target = get_global_mouse_position() #target is set to the mouse's position
		clonedPlatform.position = target #sets the created platform to that position with a left_click
		add_child(clonedPlatform) #added to the scene
		PlatformLimit -= 1
		GlobalPlatformOrganizing.PlatformLimit = PlatformLimit

func _implementCollider():
	target = get_global_mouse_position()
	MouseCollider.position = target

func ChangingDrone():
	if GlobalCameraManager.current_camera == 1:
		Input.set_custom_mouse_cursor(DroneCursor, Input.CURSOR_ARROW, Vector2(125,65))
	if GlobalCameraManager.current_camera == 2:
		Input.set_custom_mouse_cursor(DroneCursorSmall, Input.CURSOR_ARROW, Vector2(125,65))
		

func _on_no_creation_area_area_entered(_area):
	NoCreation = true

func _on_no_creation_area_area_exited(_area):
	NoCreation = false
