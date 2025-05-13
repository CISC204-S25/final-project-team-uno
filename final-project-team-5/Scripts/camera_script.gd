extends Node
@export var FollowPlayerCamera: Camera2D
@export var SceneCamera: Camera2D

var current_camera: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	
	SceneCamera.make_current()
	




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("zoom_toggle_camera"):
		switch_camera()

func switch_camera():
	if FollowPlayerCamera.is_current():
		SceneCamera.make_current()
	else:
		FollowPlayerCamera.make_current()
