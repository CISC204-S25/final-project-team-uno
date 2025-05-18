extends Node

var MoveCreatedPlatform: bool

@onready var PlatformLimit: int #Limits the amount of platforms created on screen

# Called when the node enters the scene tree for the first time.
func _ready():
	PlatformLimit = 3


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	ExceedingPlatformLimit()


func ExceedingPlatformLimit():
	if PlatformLimit >= 2:
		PlatformLimit = 2
	if PlatformLimit <= 0:
		PlatformLimit = 0
