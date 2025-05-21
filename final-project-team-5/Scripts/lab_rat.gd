extends CharacterBody2D
#Uses GlobalPlatformOrganizes & GlobalCameraManager

@export var speed = 300.0
@export var jumpVelocity = -400.0
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
@export_range(0.0, 1.0) var friction = 0.1
@export_range(0.0 , 1.0) var acceleration = 0.25

#fixes buddy's gravity (velocity in the y-axis). Buddy can no longer fly high or be floaty >:( (or Buddy can again, just change it back to 0.)
@export var gravityPull = 50 

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * gravityPull * delta
	
	#inputs only affect x axis
	var dir = Input.get_axis("move_left", "move_right")
	
	#applies friction and acceleration
	if dir != 0:
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
	else:
		velocity.x = lerp(velocity.x, 0.0, friction)
	
	if dir<0:
		$Sprite2D.flip_h = false
	elif dir>0:
		$Sprite2D.flip_h = true
	
	move_and_slide()
	
	#only jump when on the ground
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = jumpVelocity

func _on_death_block_area_entered(_area: Area2D) -> void:
	get_tree().reload_current_scene()
	GlobalPlatformOrganizing.PlatformLimit = 2 #restarts platform limit after death
	GlobalCameraManager.buddy_teleporting = true


func _on_restart_area_entered(_area):
	get_tree().reload_current_scene()
	GlobalPlatformOrganizing.PlatformLimit = 2 #restarts platform limit after restart
	GlobalCameraManager.buddy_teleporting = true
	


#switching scene camera location
func _on_camera_location_1_area_entered(_area):
	GlobalCameraManager.camera_location = 1

func _on_camera_location_2_area_entered(_area):
	GlobalCameraManager.camera_location = 2


func _on_camera_location_3_area_entered(_area):
	GlobalCameraManager.camera_location = 3


func _on_camera_location_4_area_entered(_area):
	GlobalCameraManager.camera_location = 4


func _on_camera_location_5_area_entered(_area):
	GlobalCameraManager.camera_location = 5


func _on_camera_location_6_area_entered(_area):
	GlobalCameraManager.camera_location = 6


func _on_camera_location_7_area_entered(_area):
	GlobalCameraManager.camera_location = 7


func _on_camera_location_8_area_entered(_area):
	GlobalCameraManager.camera_location = 8


func _on_camera_location_9_area_entered(_area):
	GlobalCameraManager.camera_location = 9


func _on_camera_location_10_area_entered(_area):
	GlobalCameraManager.camera_location = 10
