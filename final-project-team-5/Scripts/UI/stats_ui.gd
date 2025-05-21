extends Node2D
#Globals: NumberSystem
@export var Medals: Label
@export var Deaths: Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Medals.text = str(GlobalNumberSystem.MedalsCollected)
	Deaths.text = str(GlobalNumberSystem.Deaths)


func _on_timer_timeout():
	hide()
