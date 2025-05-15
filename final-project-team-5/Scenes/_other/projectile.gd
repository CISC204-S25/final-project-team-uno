extends CharacterBody2D

@export var SPEED = 100

var dir : float
var spawnPOS : Vector2
var spawnROT : float
#var zDex = int

func _ready() -> void:
	global_position = spawnPOS
	global_rotation = spawnROT
	#z_index = zDex

func _physics_process(delta: float) -> void:
	velocity = Vector2(0, -SPEED).rotated(dir)
	move_and_slide()
