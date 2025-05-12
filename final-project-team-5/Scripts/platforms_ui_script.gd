extends Control
#Uses GlobalPlatformOrganizer

signal MovingPlatformOn
signal MovingPlatformOff

signal NoCreatingPlatforms

var move_platform: bool = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if move_platform == true:
		MovingPlatformOn.emit()
	else:
		MovingPlatformOff.emit()



func _on_standard_platform_pressed():
	move_platform = false
	GlobalPlatformOrganizing.MoveCreatedPlatform = false

func _on_moving_platform_pressed():
	move_platform = true
	GlobalPlatformOrganizing.MoveCreatedPlatform = true
