extends Node2D

@export var SceneCamera: Camera2D
@export var CameraMarkerArray = []


#Changing the location
signal CameraLocation1
signal CameraLocation2
signal CameraLocation3
signal CameraLocation4
signal CameraLocation5
signal CameraLocation6
signal CameraLocation7
signal CameraLocation8
signal CameraLocation9
signal CameraLocation10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_CameraLocation()
	

func _CameraLocation():
	if GlobalCameraManager.camera_location == 1:
		CameraLocation1.emit()
	if GlobalCameraManager.camera_location == 2:
		CameraLocation2.emit()
	if GlobalCameraManager.camera_location == 3:
		CameraLocation3.emit()
	if GlobalCameraManager.camera_location == 4:
		CameraLocation4.emit()
	if GlobalCameraManager.camera_location == 5:
		CameraLocation5.emit()
	if GlobalCameraManager.camera_location == 6:
		CameraLocation6.emit()
	if GlobalCameraManager.camera_location == 7:
		CameraLocation7.emit()
	if GlobalCameraManager.camera_location == 8:
		CameraLocation8.emit()
	if GlobalCameraManager.camera_location == 9:
		CameraLocation9.emit()
	if GlobalCameraManager.camera_location == 10:
		CameraLocation10.emit()



func _on_camera_location_1():
	SceneCamera.set_position(CameraMarkerArray[0])

func _on_camera_location_2():
	SceneCamera.set_position(CameraMarkerArray[1])

func _on_camera_location_3():
	SceneCamera.set_position(CameraMarkerArray[2])

func _on_camera_location_4():
	SceneCamera.set_position(CameraMarkerArray[3])

func _on_camera_location_5():
	SceneCamera.set_position(CameraMarkerArray[4])

func _on_camera_location_6():
	SceneCamera.set_position(CameraMarkerArray[5])

func _on_camera_location_7():
	SceneCamera.set_position(CameraMarkerArray[6])

func _on_camera_location_8():
	SceneCamera.set_position(CameraMarkerArray[7])

func _on_camera_location_9():
	SceneCamera.set_position(CameraMarkerArray[8])

func _on_camera_location_10():
	SceneCamera.set_position(CameraMarkerArray[9])
