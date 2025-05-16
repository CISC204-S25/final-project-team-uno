extends StaticBody2D

#Uses GlobalPlatformOrganizing.gd


@export var moving_platform: bool #if the platform is able to move
@export var speed = 200
#@export var TimeB4Moving: Timer #timer that delays the platform from moving
var movetheplatform: bool = false
var MovementLocking: bool =false #Locks (disables) the CREATED platforms from changing to movement 
var VariantCooldown: bool = false #extensive timer similar to "MovementLocking"


func _physics_process(_delta):
	if moving_platform == true:
		#TimeB4Moving.start()
		#pass
		if (movetheplatform == true):
			move_local_x(2.5, true) #moves the platform after time delay
	

func _ready():
	pass
	"""
	if moving_platform == true:
		print("working")
		TimeB4Moving.start()
		"""

func _process(_delta):
	
	if (GlobalPlatformOrganizing.MoveCreatedPlatform == true) && (MovementLocking == false):
		moving_platform = true
	if GlobalPlatformOrganizing.MoveCreatedPlatform == false && (MovementLocking == false):
		moving_platform = false

func _on_platform_duration_timeout(): #Timer for how long the platform appears
	GlobalPlatformOrganizing.PlatformLimit += 1 #adds an int for another platform to be created
	queue_free() #when time is up, the platform is deleted


func _on_time_before_moving_timeout():
	MovementLocking = true
	if moving_platform == true:
		movetheplatform = true #boolean that moves the platform after time delay
	else:
		movetheplatform = false


func _on_platforms_ui_moving_platform_off():
	moving_platform = false


func _on_platforms_ui_moving_platform_on():
	moving_platform = true


func _on_platform_change_cooldown_timeout():
	VariantCooldown = true
