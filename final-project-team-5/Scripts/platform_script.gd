extends StaticBody2D

@export var moving_platform: bool = false
@export var speed = 200
@export var TimeB4Moving: Timer
var movetheplatform: bool = false

func _physics_process(delta):
	if moving_platform == true:
		#TimeB4Moving.start()
		#pass
		if movetheplatform == true:
			move_local_x(2.5, true) #moves the platform after time delay

func _ready():
	if moving_platform == true:
		TimeB4Moving.start()

func _on_platform_duration_timeout():
	queue_free() #when time is up, the platform is deleted


func _on_time_before_moving_timeout():
	movetheplatform = true
