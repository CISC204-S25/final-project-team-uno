extends Node
#NOTE: THIS SCRIPT IS BEING USED
#var tween: Tween
#var camera2D: Camera2D
#var transition: bool

var current_camera: int
var camera_location: int

var buddy_teleporting: bool #changes buddy's spawn after death...
	#...I don't know why I put it in this script.
#@export var SceneCamera: Camera2D
#@export var CameraMarkerArray = []



# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func transitionCamera(from: Camera2D, to: Camera2D, duration: float = 0.2) -> void:
	pass #might be used later
	
