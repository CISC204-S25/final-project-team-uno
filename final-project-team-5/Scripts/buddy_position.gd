extends Node2D
#Globals: CameraManager
#lazy script & variables
@export var Buddy: CharacterBody2D
@export var PositionMarker1: Marker2D
@export var PositionMarker2: Marker2D
@export var PositionMarker3: Marker2D
@export var PositionMarker4: Marker2D
@export var PositionMarker5: Marker2D
@export var PositionMarker6: Marker2D
@export var PositionMarker7: Marker2D
@export var PositionMarker8: Marker2D
@export var PositionMarker9: Marker2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_BuddyTeleporting()

func _BuddyTeleporting():
	if (GlobalCameraManager.camera_location == 1) && (GlobalCameraManager.buddy_teleporting == true):
		Buddy.set_position(PositionMarker1.position)
		GlobalCameraManager.buddy_teleporting = false
		
	if (GlobalCameraManager.camera_location == 2) && (GlobalCameraManager.buddy_teleporting == true):
		Buddy.set_position(PositionMarker2.position)
		GlobalCameraManager.buddy_teleporting = false
		
	if (GlobalCameraManager.camera_location == 3) && (GlobalCameraManager.buddy_teleporting == true):
		Buddy.set_position(PositionMarker3.position)
		GlobalCameraManager.buddy_teleporting = false
		
	if (GlobalCameraManager.camera_location == 4) && (GlobalCameraManager.buddy_teleporting == true):
		Buddy.set_position(PositionMarker4.position)
		GlobalCameraManager.buddy_teleporting = false
		
	if (GlobalCameraManager.camera_location == 5) && (GlobalCameraManager.buddy_teleporting == true):
		Buddy.set_position(PositionMarker5.position)
		GlobalCameraManager.buddy_teleporting = false
		
	if (GlobalCameraManager.camera_location == 6) && (GlobalCameraManager.buddy_teleporting == true):
		Buddy.set_position(PositionMarker6.position)
		GlobalCameraManager.buddy_teleporting = false
		
	if (GlobalCameraManager.camera_location == 7) && (GlobalCameraManager.buddy_teleporting == true):
		Buddy.set_position(PositionMarker7.position)
		GlobalCameraManager.buddy_teleporting = false
		
	if (GlobalCameraManager.camera_location == 8) && (GlobalCameraManager.buddy_teleporting == true):
		Buddy.set_position(PositionMarker8.position)
		GlobalCameraManager.buddy_teleporting = false
		
	if (GlobalCameraManager.camera_location == 9) && (GlobalCameraManager.buddy_teleporting == true):
		Buddy.set_position(PositionMarker9.position)
		GlobalCameraManager.buddy_teleporting = false
