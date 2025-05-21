extends Node2D
#Globals: NumberSystem

@export var Key1: Node2D
@export var Door1: Node2D
@export var Key2: Node2D
@export var Door2: Node2D

var DoorAnimated: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	_DoorAnimation()
	if GlobalNumberSystem.DoorsOpened == 1:
		DoorAnimated = true
		if Door1.global_position.y <= 250:
			DoorAnimated = false
			#Door1.set_position(Vector2(1256, 250))
	if GlobalNumberSystem.DoorsOpened == 2:
		DoorAnimated = true
		if Door2.global_position.y <= 140:
			DoorAnimated = false

func _DoorAnimation():
	if DoorAnimated == true:
		if GlobalNumberSystem.DoorsOpened == 1:
			Door1.position.y -= 3
		if GlobalNumberSystem.DoorsOpened == 2:
			Door2.position.y -= 3

func _on_keycard_area_entered(_area):
	if GlobalNumberSystem.DoorsOpened <= 0:
		GlobalNumberSystem.DoorsOpened = 1
		Key1.hide()


func _on_keycard_2_area_entered(_area):
	if GlobalNumberSystem.DoorsOpened <= 1:
		GlobalNumberSystem.DoorsOpened = 2
		Key2.hide()
